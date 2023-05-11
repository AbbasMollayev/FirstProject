List<ElectricCar> newCars = new List<ElectricCar> ();

ElectricCar c1 = new ElectricCar('Tesla X', 95000, 12);
ElectricCar c2 = new ElectricCar('Tesla H', 100000, 10);
ElectricCar c3 = new ElectricCar('Tesla L', 350000, 15);

newCars.add(c1);
newCars.add(c2);
newCars.add(c3);

Dealership d1 = new Dealership('CarShop', newCars);
d1.showCars();
d1.getCarCount();
d1.discountAllCars(15000);

ElectricCar c4 = new ElectricCar('Future', 50000, 13);
d1.addCar(c4);
d1.discountAllCars(14000);
d1.showCars();

ElectricCar e1 = new ElectricCar('Audi', 50000, 15);
System.debug('e1 value is : ' + e1);
