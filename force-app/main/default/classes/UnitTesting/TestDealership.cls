@isTest
private class TestDealership {
  @isTest
  static void testShowCars() {
    // Create sample data
    List<ElectricCar> sampleCars = new List<ElectricCar>{
      new ElectricCar('Model 1', 10000, 120),
      new ElectricCar('Model 2', 15000, 46),
      new ElectricCar('Model 3', 20000, 29)
    };
    Dealership dealership = new Dealership('Test Dealership', sampleCars);

    // Perform the action
    Test.startTest();
    dealership.showCars();
    Test.stopTest();

    // Verify the output in the debug log
    String expectedDebugLog = 'Model is : Model 1 and price is 10000\n'
                            + 'Model is : Model 2 and price is 15000\n'
                            + 'Model is : Model 3 and price is 20000';
    System.assertEquals(expectedDebugLog, dealership.showCars());
  }

  @isTest
  static void testGetCarCount() {
    // Create sample data
    List<ElectricCar> sampleCars = new List<ElectricCar>{
      new ElectricCar('Model 1', 10000,44),
      new ElectricCar('Model 2', 15000,55)
    };
    Dealership dealership = new Dealership('Test Dealership', sampleCars);

    // Perform the action
    Integer carCount = dealership.getCarCount();

    // Verify the result
    System.assertEquals(2, carCount);
  }

  @isTest
  static void testDiscountAllCars() {
    // Create sample data
      List<ElectricCar> sampleCars = new List<ElectricCar>{
      new ElectricCar('Model 1', 10000,34),
      new ElectricCar('Model 2', 15000,22)
    };
    Dealership dealership = new Dealership('Test Dealership', sampleCars);

    // Perform the action
    dealership.discountAllCars(2000);

    // Verify the updated prices
    
      System.assertEquals(8000, dealership.eCars[0].price );
    
  }

  @isTest
  static void testAddCar() {
    // Create sample data
    List<ElectricCar> sampleCars = new List<ElectricCar>{
      new ElectricCar('Model 1', 10000, 28)
    };
    Dealership dealership = new Dealership('Test Dealership', sampleCars);

    // Perform the action
    ElectricCar newCar = new ElectricCar('Model 2', 15000,66);
    dealership.addCar(newCar);

    // Verify the added car
    System.assertEquals(2, dealership.getCarCount());
    System.assertEquals(newCar, dealership.eCars[1]);
  }
}     

       
  


