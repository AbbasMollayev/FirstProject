public class ElectricCar extends Car {
    public Integer batteryCapacity;
    
    public ElectricCar(String model,Decimal price, Integer batteryCapacity){
        super(model,price);
        this.batteryCapacity = batteryCapacity;
    }

    public override void drive(){
        System.debug('Car ' + this.model + ' is driving on Electricity'); 
    }
}