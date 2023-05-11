@isTest 
public class TestDealership {
     private static Dealership d1;
     private static List<ElectricCar> newCars;
    @TestSetup
    static void setup() {
        List<ElectricCar> newCars = new List<ElectricCar>();
        ElectricCar c1 = new ElectricCar('Tesla X', 95000, 12);
        ElectricCar c2 = new ElectricCar('Tesla H', 100000, 10);
        ElectricCar c3 = new ElectricCar('Tesla L', 350000, 15);
        newCars.add(c1);
        newCars.add(c2);
        newCars.add(c3);
        d1 = new Dealership('CarShop', newCars);
    }
    
    @isTest 
    static void getCarCount() {
        Test.startTest();
        Integer actualCount = d1.getCarCount();
        Test.stopTest();
        Assert.areEqual(3, actualCount);
    }

    @isTest 
    static void discountAllCars(){
       Test.startTest();
       d1.discountAllCars(2000);
       Test.stopTest();
       
       List<ElectricCar> cars = newCars;
       for (ElectricCar car : cars) {
          Assert.areEqual(93000, car.price);
   }
}

}
         

       
  


