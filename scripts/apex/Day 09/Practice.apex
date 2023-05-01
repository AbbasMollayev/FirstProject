/**
Practice
Season: Winter - boots
spring - sneakers
summer - sandals
autumn - loafers
 */

 String season = 'winter';

 If(season == 'winter'){
    System.debug('Wear your boots');
 }else if(season == 'spring'){
    System.debug('Wear you sneakers');
 }else if(season == 'summer'){
    System.debug('Wear your sandals');
 }else{
    System.debug('Wear your loafers');
 }

//switch on statement 
String seasonAgain = 'summer';

switch on seasonAgain{
    when 'winter'{
        System.debug('wear your boots');
    }when 'spring'{
        System.debug('wear your sneakers');
    }when 'summer'{
        System.debug('wear your sandals');
    }when else{
        System.debug('wear your loafers');
    }
}

Integer n = 2;

for(Integer count=1 ; count<=10 ; count++){

System.debug(count + 'X' +n+ ' = ' + (count*n));
}

/**
Define a list of brands of cars
Practice List methods */

List<String>cars=new List<String>{'Ford','Toyota','Volvo'};
System.debug(cars);

cars.add('Mercedes');
cars.add('BMW');
cars.set(3, 'Tesla');
System.debug(cars);

Boolean isHonda = cars.contains('Honda');
System.debug(isHonda);

//Set , add and remove method
Set<Integer> mySet = new Set<Integer>();

mySet.add(1);
mySet.add(3);
mySet.add(1);
mySet.add(1);
mySet.add(2);
System.debug(mySet);

System.debug(mySet.size());

mySet.remove(2);
System.debug(mySet); 

Set<Decimal> prices = new Set<Decimal>{4.05, 6.99, 7.54, 8.50};
prices.add(0.99);
prices.add(6.99);
prices.add(7.15);
System.debug(prices);

Decimal sum=0;
for(Decimal eachPrice:prices){
    sum+=eachPrice;
}
System.debug(sum);

/**
Create a List of 10 names into List of String with some duplicate value 
   find out how many unique names showed up in the list using below approach
   1. create an empty Set of String 
   2. Iterate over names List using for each loop
   3. use add method of Set to add each items into Set
   4. outside the loop print out the size of set
 */

 //Task Set 4
//task 5

List<String> names = new List<String>{'John', 'Ken', 'Mary', 'Ben', 'John', 'Akbar', 'Arife',
                                            'Nina', 'Arife', 'Ben'};
   Set<String> noDuplicateNames = new Set<String>();
  //  System.debug(noDuplicateNames.size());
  
     System.debug(names.size());

     for(String eachName : names){
      System.debug(eachName);
     }

Integer player = 1;
for(Integer exp = 0; exp < 100 ; exp += 10){
    player++;
}
System.debug('game over ' + player);

     