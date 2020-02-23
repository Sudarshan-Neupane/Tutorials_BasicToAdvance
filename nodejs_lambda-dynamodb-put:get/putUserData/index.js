'use strict'
const AWS = require('aws-sdk');

AWS.config.update({region:'us-east-1'});
exports.handler = function (event, context, callback) {
    const documentClient = new AWS.DynamoDB.DocumentClient({region:'us-east-1'});
    
    let responseBody = "";
  let statusCode = 0;

  const {id,firstName, lastName} = JSON.parse(event.body)
    var ddb = new AWS.DynamoDB({apiVersion: '2012-08-10'});
    var params = {
        Item: {
         "id":id,
         "firstName": firstName,
         "lastName":lastName
        }, 
        TableName: "Users"
       };
       try{  
           const data = await documentClient.get(params).promise();
           responseBody = JSON.stringify(data);
           statusCode = 201;
       }catch(error){
        esponseBody = `Unable to put user data`;
       statusCode = 403;
       }


  const response = {
    statusCode: statusCode,
    headers: {
      "myHeader": "test"
    },
    body: responseBody
  }

  return response;
}