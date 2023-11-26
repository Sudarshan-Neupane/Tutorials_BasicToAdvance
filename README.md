### 1. [Getting Started](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/angular_getting_started1.md)

### 2. [Type Script angular](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/Angular_typescript.md)

### 3. [Angular Form/Dependency Injection](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/Angular_form.md)
### 4. [AWS](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/aws-beginners-setup.md)
### 5. [Localhost http to https setting](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/https-setting.md)
### 6. [Output Json encodeing](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/json-encoding.md)
### 7. [Couchbase Basic N1QL tuts](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/CouchBase-tuts.md)
### 8. [How to create a gitlab EC2 CICD](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/blob/master/Createcicd.md)
### 9. [AWS Lamda put and get data to Dynamodb](https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands/tree/master/nodejs_lambda-dynamodb-put:get)
### 10.[System Design tutorial book](https://github.com/Sudarshan-Neupane/Tutorials_BasicToAdvance/blob/bc8a233fcffc84beeda14ad04e488521c7a542e7/d60fa09a-c4b5-4e31-9dbd-5d049c6c8f49.pdf_compressed.pdf)


### ~~~ Tutorial Angular/NPM  ~~~~
##NPM commands and getting started:

	- npm install(5.6/6.5.0  mine latest)
	- npm start
	
	- npm install -g typescript
	
### Angular CLI

	- Install Angular
			> $ npm install -g @angular/cli
			> $ ng --version
	    If you are running in OSX
			- you need to install watchman.(you might receive this line in the output)
				#could not start watchman; falling back to NodeWatcher for file system events.
			$brew install watchman
	
### Create Example Project

		> $ ng new angular-hello-world
		
**index.html**
```
 <!doctype html>
	 <html lang="en">
	 <head>
	<meta charset="utf-8">
	 <title>AngularHelloWorld</title>
	<base href="/">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="image/x-icon" href="favicon.ico">
	 </head>
	<body>
	<app-root></app-root>
	</body>
    </html>
```

**_<app-root> </app-root>_**
*The app-root tag is where our application will be rendered*
*But what is the app-root tag and where does it come from? **app-root is a component that is defined by our Angular application**. In Angular we can define our own HTML tags and give them custom functionality. The app-root tag will be the “entry point” for our application on the page.*

**Running the application**
 > $cd angular_hello_world
 
 > $ng serve( npm start)
 
**If you want to change the port**
 > $ng serve --port 9001
 
 ## Create a Component
 > $ng generate component hello-world
 
:+1: *Notice that we suffix our TypeScript file with .ts instead of .js The problem is our browser
     doesn’t know how to interpret TypeScript files. To solve this gap, the **ng serve** command
     live-compiles our .ts to a .js file automatically.*
     
 I am explaning each individual part of the component class below.
 
 ```
    1 import { Component, OnInit } from '@angular/core';
    2
    3 @Component({
    4 selector: 'app-hello-world',
    5 templateUrl: './hello-world.component.html',
    6 styleUrls: ['./hello-world.component.css']
    7 })
    8 export class HelloWorldComponent implements OnInit {
    9  name: String;
       listName: [];
    10 constructor() { 
    11  this.name='Sudarshan';
        this.listName= ['Ari', 'Carlos', 'Felipe', 'Nate'];
        }
    12 ngOnInit() {
    13 }
    14
    15 }
 ```
 **_@Component_**
   ``` 
   @Component is called the *decorators*. When we use @Component on the HelloWorld class, we are “decorating” HelloWorld as a Component.We want to be able to use this component in our markup by using a <app-hello-world> tag. To do
    that, we configure the @Component and specify the selector as app-hello-world.
   ```
 ###### Load Our new Component(How do we load our page?)
 In ourder to add new component tag to a template that is already rendered. Open the app.component.html 
 ```
      <h1>
       {{title}}
        <app-hello-world></app-hello-world>
     </h1>
 ``` 
 Here, hello world component is loaded on the app component. 
 * ```name: String ``` property It means that we are declaring the name property to be of type string.
 * ``` constructor() { this.name='Sudarshan'} ==> ```  A function that is called when we creat a new instances of this class.
 
 **Rendering the template**
 ```$xslt
1 <p>
2 Hello {{ name }} ==> display the single value.
3 </p>
4. =================
    <ul>
    <li *ngFor="let name of listName">Hello {{ name }}</li>
   </ul>
   ==================
```
**Accepting the user Input**
> import Input. It looks like 

    *import { Component,  OnInit,  Input } from '@angular/core';*
  
 
 #### ng serve 
 
 ng will look at the file **angular.json** to find the entry point of the application. Lets describe how ng finds the components we just built.
 
     •  angular.json specifies a "main" file, which in this case is main.ts
     
     •  main.ts is the entry-point for our app and it bootstraps our application
     
     • The bootstrap process boots an Angular module – I haven’t talked about modules yet, but
     we will in a minute
     
     • We use the AppModule to bootstrap the app. AppModule is specified in src/app/app.module.ts
     
     • AppModule specifies which component to use as the top-level component. In this case it is
     AppComponent
     
     • AppComponent has <app-user-list> tags in the template and this renders our list of users.
 
 * angular.json ==> main.ts==> app.module.ts
 
    > @NgModule decorator has four keys: declarations, imports, providers, and bootstrap.* 
    
    > Declarations - specifies the conponent.
    
    > imports - describes which dependencies this modules has. for example we are creating browser app, so we wnat to import the **BrowserModule**. If we import in the component you have to define inside NgModule's imports.
    
    > **Providers** - providers is used for *dependency injection*. So to make a service available to be injected throughout our application, we will add it here.
    
    > bootstrap - bootstrap tells Angular that when this module is used to bootstrap an app, we need to load the AppComponent component as the top-level component.
    
 




#Repository link command 
…or create a new repository on the command line
echo "# npm_angular_tuts_commands" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands.git
git push -u origin master
…or push an existing repository from the command line
git remote add origin https://github.com/Sudarshan-Neupane/npm_angular_tuts_commands.git
git push -u origin master
…or import code from another repository
You can initialize this repository with code from a Subversion, Mercurial, or TFS project.

=============================================
# cheat seet ~~

* Sudarshan Neupane

## UI 
 I am using  angular 6 and node 8.11 for building this project. To run this project on our local machine first we need to install node and angular. 
 The command which we need to install the project are as follows. Go to the UI folder and use the following command.
 1. npm install (one time)
 2. npm install -g @angular/cli(one time)
 3. ng serve (npm start)
 4. ng build
 
 command line link url [angular cli] https://cli.angular.io/
 
 ##### list of important file for openId setup and web service call
 * angular.json -- list of all the dependency file.
 * app-routing.module.ts >> browser routing setup
 * app.component.ts >> environment setup i.e which environment we need to point
 * authentication>auth.config.dev/prod >> This file is use for storing client Id and redirect URL. 
 * vibe-tracking.service.ts (need to change _urlPrefix to run local machine)
 
 ##### For running angular and spring project together need to start.
 * ng build ng
    * setup angularjs output path "outputPath": "../src/main/resources/static",
    * we are setting outputPath: ../src/main/resources/static which is inside the spring project.

##### Proxy config
   * npm config
    * npm config set <key> <value>
        * .npmrc  file created inside C:\Users\HHQ2VM
            - registry=http://registry.npmjs.org/
            - https-proxy=http://tttee:Pass@**.**.com:8080/ 
            - proxy=http://tteee:pass@**.*.com:8080/
            - http://ttee:pass@**.*.com:8080/=
 
####Chart js
  * npm install chart.js --save
### Generate new component
  * ng g c refNumQuery
### [personal website] http://sudarshanneupane.com.np.s3-website.us-east-2.amazonaws.com/   
