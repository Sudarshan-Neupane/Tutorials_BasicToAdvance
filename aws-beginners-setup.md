## AWS

**What is aws?**

--> AWS is a global cloud platform.

--> Platform as a service/ Software as a service

--> Cloud storage.


**Key Principles**

--> Global Regions/ Availability Zones

--> Web service accesses strategies(REST/SOAP/Query)

--> Machine Hours

--> Free Tiers/pay as you go

--> High reliability /fault tolerance

--> Eventual Consistency




**Services Overview**

- EC2(Elastic Compute Cloud) - give you a machine to run the server

- VPC(virtual private cloud) - chunk of the server.

- S3 (Simple Storage Service) - upload and share a file

- Relational Database Service

- Route 53

- ELB (Elastic Load Balancing)

- Auto scaling


**Create a account**

EC2

--Steps--
1. Install AWS CLI
2. cmd

        aws -version
        Generate access Key and secret key
            1. Go to Profile (you name on the top left cornor of the page)
            2. My security Credentials
            3. and genreate key and save on file or downolad in CSV format
         Use the access key in your terminal using following command
            1. aws configure
             - enter your information
            2. configure check what ec2 instance on your account
              C:\WINDOWS\system32>aws ec2 describe-instances
              {
                  "Reservations": []
              }


#Configure Ec2 instance.

Search Ec2 and click lunch instance.

    1. choose the amazon linux images
    2. T2 micro instances(Next)
    3. auto scaling group(Next)
    4. pick either one of your subnet(Next)
    3. Automatically manage the 8gb instances
    .......
    5. lunch create your key pair and download your pem file.


#Demo our application to deploy.

1. create a sample project file ex. index.html
2. Open your command line

       - download a npm
       -
       - Go to dashboar ec2 and we should see 1 running instance.
       - CLick on that instance you will see the detail of that instance.
       ** Create a public id if you want to access **
            - Crate a elastic ip.
             - select elastic id and allocate ip. save a public ip
             - Than go to action and select a associate address
             - then click the associate
             - if you click a instance link you will see the publich address.
        now following command is use to connect.(download folder)
        ssh -i sudarshan-test.pem ec2-user@13.XX.XXX.XXX( successfully connect to the instance)


      Install Node on your instance
        1. sudo yum update
        2. curl --location https://rpm.nodesource.com/setup_6.x | sudo bash -
       3. sudo yum install -y nodejs
       4. node version check
 #### Now transfer your application to your instance
        -  window user
        - > scp -r -i sudarshan-test.pem demo-app/ ec2-user@13.58.232.113:/home/ec2-user/demo-app
        -> now again login your instance
           >> ssh -i sudarshan-test.pem ec2-user@13.58.232.113
           >> type ls to see your transfer file.



## AWS services and their functionality

![AWS Services](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/images/Aws_services.JPG) 





