public class Dealership {
    public String name;
    public List<ElectricCar> eCars;
    
    public Dealership(String name, List<ElectricCar> eCars){
        this.name = name;
        this.eCars = eCars;
    }
    
    public void showCars(){
        for(ElectricCar each : eCars) {
            System.debug('Model is : ' + each.model + ' and Price is : ' + each.price);
        }
    }
    
    public Integer getCarCount(){
    //     Integer count = 0;
    //     for(ElectricCar each : eCars) {
    //         count++;
    //     }
    //     return count;
         return this.eCars.size(); //-------- This is better way,, 
     }

    public void discountAllCars(Integer discountAmount){
        for(ElectricCar each : eCars){
            each.price -= discountAmount;
        }
    }

    public void addCar(ElectricCar newCar){
        eCars.add(newCar);
    }
}