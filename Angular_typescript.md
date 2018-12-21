#### Typescript ###
**Typescript** It is the superset of ES6. If we write in ES6,  it's perfectly valid and compile.
    
    - types
    - annotations 
  
 **ES6**
    
    -classes
    - modules
  **ES5**(There are five big improvements that typescript over ES5)
  
  - Types
    
        - var fullnName:string
        -var age:number
        - var married:boolean
        eg. 
            function geetData(name:string):string{
                return "Hello"+name;
              }
        //types for arguments and return values:
        
        -var fullName: string = 'Sudarshan Neupane';
        
       *ENUM*
        
        enum works by naming numeric values. For instance, if we wanted to have a fixed list of roles a person may have we could write this:
        
        enum Role{Employee,Manager,Admin}
        var role:Role= Role.Employee;
        
      *ANY*
       
        any is the default type if we omit typing for a given variable. Havin a variable of type *any* allows it to receive any kind of value:
        
        var something:any='as String'
        something=1;
        something=[1,2,3]
      
      *VOID*
      
      Using Void means there is no type expected. This is usually in function with no return value;
        
        function setName(name:string):void
            {
            this.fullName = name;
           }
           
  - *Class*
        
        Class may have properties, methods and constructors.
        
         class Vehicle{
         
            firstName:String="sudarshan";
            /** 
              type veriables here 
             **/
             getData(){
             console.log("Hello here",this.firstName)
             }
         }
       
       *CONSTRUCTORS*
       Constructor is executed when a new instance of the class is being created.
        
            Class Vehicle{
               constructor(){
                    /* business logic here*/
               }
            }
            
            var v = new Vehicle();// this will print the constructor.
        
       :us: In typescript you can have only **one constructor per class**  
       
   
        


  
  

