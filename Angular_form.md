#### Form 
**FormControls and FormGroups**
```
     FormControl
        -  A formControl represent the single field. it is the smallest unit of the Angular form.
        - It encapsulate the field's value.
        // create a new FormControl with the value "Nate"
                let nameControl = new FormControl("Nate");

                ........
                <input type="text" [formControl]="name"/>
        
     Form Group
            1 let personInfo = new FormGroup({
            2   firstName: new FormControl("Nate"),
            3   lastName: new FormControl("Murray"),
            4   zip: new FormControl("90210")
            5 })  
              
```
**Loading the FormsModule**
    - import { FormsModule,  ReactiveFormsModule  }from '@angular/forms';


**Template driven**
   
**Reactive Forms with Form Builder**
 ```
          1 import { Component, OnInit } from '@angular/core';
          2 import {
          3 FormBuilder,
          4 FormGroup
          5 } from '@angular/forms';
  ```
:thumbsup: **what does inject means?**

## Dependency Injection

As our programs grow in size, parts of the app need to communicate with other modules. *When
module A requires module B to run, we say that B is a dependency of A.*
One of the most common ways to get access to dependencies is to simply import a file. For instance,
in this hypothetical module we might do the following:
```
1 // in A.ts-- file
2 import {B} from 'B'; // a dependency!
3
4 B.foo(); // using B 
```
    • substitute out the implementation of B for MockB during testing
    • share a single instance of the B class across our whole app (e.g. the Singleton pattern)
    • create a new instance of the B class every time it is used (e.g. the Factory pattern)
      


  
  

