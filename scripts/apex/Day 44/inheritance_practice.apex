// THIS WILL NOT WORK , can not create object out of abstract type
// Animal a1 = new Animal('abc',2);

Dog d1 = new Dog('Sharik', 3,'Golden Retriever');
System.debug('d1 value is : ' + d1);
d1.makeNoise() ; 

 System.debug('d1.getInfo(\'Hills\') value is : ' 
               + d1.getInfo('Hills'));

Cat c1 = new Cat('Tom', 5, 'Yellow');
System.debug('c1 value is : ' + c1);
c1.makeNoise() ; 
System.debug('c1.getInfo(\'Fish\') value is : '
                     + c1.getInfo('Fish'));

List<Animal> animalLst = new List<Animal> (); 

// add 2 dogs and 2 cats into this list 
// go through each animal 
// let it make noise and print out getInfo result 

animalLst.add(  new Dog('Bobik', 3,'Toy Terrier') ) ; 
animalLst.add(  new Dog('Rocky', 5,'German Sheppard') ) ; 

animalLst.add(  new Cat('Eva', 2, 'White')   ) ; 
animalLst.add(  new Cat('Rosy', 3, 'Black')  ) ; 

for(Animal each : animalLst) {
    //System.debug('Current animal : ' + each);
    each.makeNoise() ; 

    System.debug('each.getInfo(\'Fish\') value is : '
                     + each.getInfo('Fish'));

}



// Car c1 = new Car();
// System.debug('c1 value is : ' + c1);


// List<Car> carLst = new List<Car>();

// // add 2 ElectricCar 
// // add 2 GasCar

// carLst.add(   new ElectricCar('Tesla X', 95000, 10)    ); 
// carLst.add(   new ElectricCar('Lucid Air', 85000, 9)     ); 

// carLst.add(  new GasCar('VW ID4',50000, 2 )     ); 
// carLst.add(  new GasCar('Dodge Charger',60000, 3 )      ); 

// // go through each car and print it out and call drive method 
// for(Car each : carLst) {
//     System.debug('Current car : ' + each);
//     each.drive(); 
// }