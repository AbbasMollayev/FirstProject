/**
 Create a list of Integer with 8 items
 Iterate over the list (use loop to go through each and every item)
 print out only if the number is greater than 5
*/ 

List<Integer> shoeSizes = new List<Integer>{4,7,9,2,7,8,12,1} ; 
 
for(Integer eachShoeSize:shoeSizes){
    if( eachShoeSize >5 ){
        System.debug(eachShoeSize);
    }
}

// output  7 9 7 8 12
// get the sum of shoe sizes only if the number is greater than 5

Integer sum=0;

for(Integer eachShoeSize:shoeSizes){
    if( eachShoeSize >5 ){
        sum += eachShoeSize;    
    }
}
System.debug('Sum of big shoe sizes is '+ sum);

//get the count of shoe sizes only if the number is greater than 5
//create a variable to hold the count
Integer count = 0;
//iterate over each shoe sizes
for(Integer each:shoeSizes){
//check if the number is greater than 5
    if(each>5){
//if it us, increment the count by 1 else do nothing
       count++;
    }
}
System.debug('Count of shoe sizes greater than 5 is '+count);
//by the time the loop finish
//we will end up with count of sizes greater than 5

/**
Set is a type of collection that store unique elements 
unlike List, it does not keep insertion order, it does not have the idea of position. 

Set< DataType > yourVarName = new  Set<DataType>() ; 

Set< DataType > yourVarName = new  Set<DataType>{item1,item2,..itemN} ; 
 */

 Set <Integer> targets = new Set<Integer>();
 targets.add(100);
 targets.add(100);
 targets.add(100);
 targets.add(100);
 targets.add(100);
 targets.add(200);

 System.debug(targets);
 System.debug('count of items is : '+ targets.size());

 //Create a set of String to store 10 items with, single letter for each item
 Set<String> letters = new Set<String>{'A','A','A','B','B','B','C','C','C','D'};

 //Print out the entire set
 System.debug(letters);
 //print out the size
 System.debug('Letters count is '+letters.size());
 //use for each loop to print out each items
 for(String eachLetter:letters){
    System.debug(eachLetter);
 }