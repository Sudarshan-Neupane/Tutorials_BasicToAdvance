## ~~~ Tutorial NPM NG ~~~~
##NPM commands and getting started:

	- npm install(5.6/6.5.0  mine latest)
	- npm start
	
	- npm install -g typescript
	
### Angular CLI

	- Install Angular
			$ npm install -g @angular/cli
			$ ng --version
	    If you are running in OSX
			- you need to install watchman.(you might receive this line in the output)
				#could not start watchman; falling back to NodeWatcher for file system events.
			$brew install watchman
	
### Create Example Project

		$ ng new angular-hello-world
		
**index.html**
	```
	_1 <!doctype html>
	2 <html lang="en">
	3 <head>
	4 <meta charset="utf-8">
	5 <title>AngularHelloWorld</title>
	6 <base href="/">
	7
	8 <meta name="viewport" content="width=device-width, initial-scale=1">
	9 <link rel="icon" type="image/x-icon" href="favicon.ico">
	10 </head>
	11 <body>
	12 <app-root></app-root>
	13 </body>
	14 </html>_
```




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
