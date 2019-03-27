### Couchbase cheat sheet ###
###### Query schema based on [THIS PDF](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/images/couchmusic2-data-model.pdf)


 __1. Import json to the Couchbase command__ 
 
===
    C:\Users\Downloads\study- couchabase\CB110-Data>cbimport json -c http://127.0.0.1:8091 -u Administrator -p admin@123 -b couchmusic2 -f lines -d file://couchmusic2-userprofiles.json -t 2 -g %type%::%username%


__2.	Index in Couchbase__
Create a primary index(to allow ad hoc N1QL queries to be run on the couchmusic2 bucker run a command GLOBAL INDEXING SERVICE):: 
    
    CREATE PRIMARY INDEX ON `couchmusic2` USING GSI
* A __primary index__ of N1QL will allow you to query any field of your JSON. As such, it takes up more space and is less efficient (but much more flexible). It is the basic requirement to be able to use the query language on your data.
* A __secondary index__ of N1QL is targeted at specific field(s) and will be more performant for queries involving these fields (because the index to scan will be shorter and more to the point).
      
      (CREATE PRIMARY INDEX ON `couchmusic2` USING GSI)
      
**Cbq query**
 
        cbq –e localhost:8091 –u Administrator –p password
        
__3. Select Query__
	
	- SELECT * FROM couchmusic2 LIMIT 20;
**USE KEYS to select the specific documents**

    SELECT * FROM couchmusic2  USE KEYS "country::SB";
    SELECT * FROM couchmusic2  USE KEYS ["country::SB","country::NP"];

**USE Aliases , concatenate values (AS,  ||) and access document metadata.** 

    SELECT firstName || " " || lastName As fullName, email FROM couchmusic2  USE KEYS 
    ["userprofile::aahingeffeteness42037","userprofile::aahingheadwaiter24314"];
	
   __Display metadata__
   
    SELECT firstName || " " || lastName As fullName, email, META() AS metadata FROM couchmusic2  
        USE KEYS ["userprofile::aahingeffeteness42037","userprofile::aahingheadwaiter24314"];
        ================
            {
	            "email": "delores.riley@hotmail.com",
                "fullName": "Delores Riley",
   	            "metadata": {
   	                "cas": 1553654258426839040,
                    "expiration": 0,
   	                "flags": 33554438,
   	                "id": "userprofile::aahingeffeteness42037",
                    "type": "json"
    	            }
            },

Before create a index - the response time is 25s. if we create an index for email the response time is in miliseconds.

**Create Index** 

        CREATE INDEX idx_email on couchmusic2(email)
1. Implement an index for an attribute and filter(CREATE INDEX ....WHERE)

        CREATE INDEX idx_state_active on couchmusic2(address.state) where status="active";
 
        
####4. Querying ranges, Ordering results and explaining query details

**-AND , Order by**

        SELECT * FROM couchmusic2  
        where population>=100000 AND population<=500000 
        ORDER BY population DESC;
        
        ===========================
        select address.countryCode,count(*) as user_cnt 
        from couchmusic2
        group by address.countryCode
        order by user_cnt DESC;
        
        ================================
        SELECT address.countryCode,count(*) as user_cnt 
        FROM couchmusic2
        GROUP BY address.countryCode
        HAVING address.countryCode IN['FR','GB','US']
        ORDER BY user_cnt DESC;
        
        ===============ARRAY_LENGTH============
        select artist,title,genre,ratings from couchmusic2 where type="track" 
        and ARRAY_LENGTH(ratings) >=3 and every r in ratings satisfies r.rating=5 END;
     
####5. Joining documents by any related documents value,using ANSI joins
     Index (at minimum) the right side document field to be joined
     -----------
     SELECT userprofile.firstName, userprofile.lastName, playlist.name,
           ARRAY_LENGTH(playlist.tracks) AS playlist_length
     FROM couchmusic2 AS userprofile
     JOIN couchmusic2 AS playlist
        ON userprofile.username = playlist.owner.username
        AND userprofile.type="userprofile" where playlist.type="playlist";
        
**Joining documents by embedded key references and reshaping output using inline objects**
        
        SELECT u.firstName, u.lastName,u.email 
            FROM couchmusic2 AS u USE KEYS "userprofile::abnormallyunintentional54969";
