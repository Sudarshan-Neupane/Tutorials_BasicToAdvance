## ~~~ Tutorial NPM NG ~~~~
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
 
 **Create a Component**
 > $ng generate component hello-world
 
:+1: *Notice that we suffix our TypeScript file with .ts instead of .js The problem is our browser
     doesn’t know how to interpret TypeScript files. To solve this gap, the **ng serve** command
     live-compiles our .ts to a .js file automatically.*
 
 ```
    1 import { Component, OnInit } from '@angular/core';
    2
    3 @Component({
    4 selector: 'app-hello-world',
    5 templateUrl: './hello-world.component.html',
    6 styleUrls: ['./hello-world.component.css']
    7 })
    8 export class HelloWorldComponent implements OnInit {
    9
    10 constructor() { }
    11
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
