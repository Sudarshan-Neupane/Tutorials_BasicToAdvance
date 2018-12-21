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
:thumbsup: ** what does inject means?

#Dependency Injection

        


  
  

