public abstract class Animal {
    
    // instance fields name, age
    public String name; 
    public Integer age; 
    public String breed;
    public String size;
    // constructor to set those 2 fields 
    public Animal(String name, Integer age){
        this.name = name ; 
        this.age = age ; 
    }
    // constructor for a Lion
    public Animal(String name, Integer age, String size){
        this(name, age);
        this.size = size;
    }

    // abstract void method called makeNoise 
    public abstract void makeNoise(); 

    // abstract method called getInfo  
    // it has param as food
    // return String
    public abstract String getInfo(String food) ;  

    public void eat(){
        System.debug(name + ' is eating');
    }
    
    public void move(){
        System.debug(name + ' is moving');
        
    }
}