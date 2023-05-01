/**
 Array, just like a List, ordered collection 
 can store multiple item of same type 
 can have duplicate  
 and it use [] 
 syntax for creating as below 
    // creating empty array with pre-defined size
    DataType[] varName = new DataType[sizeOfArray];

    // creating empty array with pre-defined size
    DataType[] varName = new DataType[]{item1,item2,item3...};

    we can access the individual items as below using index 
    first item  yourArrayName[0]
    second item  yourArrayName[1]
    third item  yourArrayName[2]
    
 */

String[] groceries = new String[4];
groceries[0] = 'Bread';
groceries[1] = 'Milk';
groceries[2] = 'Eggs';
groceries[3] = 'Banana';

groceries.add('Beef');
System.debug('groceries value is : ' + groceries); 

//using array syntax, print out the item and index 2
System.debug('item at index 2 : ' + groceries[2]); 
//using List syntax, print out the item and index 2
System.debug('item at index 2 : ' + groceries.get(2)); 

//Change the value of item at index 1 to 'Cream Cheese'
groceries[1]= 'Cream Cheese';
System.debug('groceries value is : ' + groceries); 

for(Integer i=0; i<groceries.size(); i++) {
    System.debug(' value is : ' + groceries[i]); 
}