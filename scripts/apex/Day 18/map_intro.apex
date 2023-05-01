/**
Map is a collection type along with List and Set
unlike List and Set , that store one item per element
Map store key-value pair per element
so instead of having one Data type like List and Set
It has 1 data type for key and 1 data type for value
 */

 //Create a Map called studentMap to represent student name and badge count
    //Student name(String) and badge count(Integer)
//and add items into it
Map <String,Integer> studentMap = new Map <String,Integer> ();

//and add items into it using 'put' method
studentMap.put('Tamara', 500);
studentMap.put('Samia', 450);
studentMap.put('Ali', 4700);
//keys in the map are unique
studentMap.put('Ali',480);
//keys in the map-case sensitive
studentMap.put('ali',0);

System.debug('studentMap value is : ' + studentMap); 

//Get the value according to the key
//Returns the value to which the specified key is mapped, or null if the map contains no value for this key
//using get(keyGoesHere) return => value

System.debug('studentMap.get(\'Ali\') value is : ' + studentMap.get('Ali')); 

// get the count of key-value pair in this map 
// size() method 
System.debug('studentMap.size() value is : ' + studentMap.size() ); 
//contains method
System.debug('studentMap.containsKey(\'Ali\') value is : ' 
                    + studentMap.containsKey('Ali')); 
System.debug('studentMap.containsKey(\'BLA\') value is : ' 
                    + studentMap.containsKey('BLA')); 

//isEmpty method check if the Map is empty or not
System.debug('studentMap.isEmpty() value is : ' + studentMap.isEmpty()); 
//remove (key) ==> remove the key-value pair if the key exists
studentMap.remove('ali'); 
System.debug('studentMap value is : ' + studentMap); 
//clear() ==> remove all items
studentMap.clear();
System.debug('studentMap value is : ' + studentMap); 

// Create a priceMap, productName, price
                // add 5 items
                // use all the methods we learned above
                // do this task right now for 5-7 minutes 
// Map <String,Decimal> priceMap = new Map <String,Decimal>();
// priceMap.put('cherry', 2.99);
// priceMap.put('banana', 3.99);
// priceMap.put('orange', 1.99);
// priceMap.put('apples', 5.99);
// priceMap.put('kiwi', 4.99);
// System.debug('priceMap value is : ' + priceMap); 

//Creating Map with value filled up already
Map <String,Decimal> priceMap = new Map<String,Decimal>  {
                                                'cherry' => 2.99,
                                                'banana' => 3.99,
                                                'orange' => 1.99,
                                                'apples' => 5.99,
                                                'kiwi' => 4.99
};
System.debug('priceMap value is : ' + priceMap); 

//check if this map contains Mango, if not then add Mango => 6.99
if(! priceMap.containsKey('Mango')){
    priceMap.put('Mango', 6.99);
}
System.debug('priceMap value is : ' + priceMap); 

//if Banana price is greater than 2==> update it to 1.99
if(priceMap.get('banana')>2 ){
   priceMap.put('banana', 1.99);
}

// keySet() method , return all the keys in Set<YourKeyDataType>
Set<String> allKeys =  priceMap.keySet() ;
System.debug('allKeys value is : ' + allKeys); 

// Iterate over each key and print it out 
for(String eachKey : allKeys) {
    System.debug('Current key : ' + eachKey);
    System.debug('Value of this key ' +  priceMap.get(eachKey) ) ; 
    System.debug('------------------');
}

// values() method , return all the values in List<YourValueDataType>
List<Decimal> priceList = priceMap.values() ; 
System.debug('priceList value is : ' + priceList); 

