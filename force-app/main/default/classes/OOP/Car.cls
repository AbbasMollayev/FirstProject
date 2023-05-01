public virtual class Car {
   public String model;
   public Decimal price;

   public Car(String model, Decimal price){
    this.model = model;
    this.price = price;
   }

   public virtual void drive(){
    System.debug('Car ' + this.model + ' is driving'); 
    
   }
}