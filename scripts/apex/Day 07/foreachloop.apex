/**
For each loop is specifically used to
Iterate over (loop through) each and every item
inside Collection like (List, Set)

for (DataType eachItem : yourCollectionVariable){
    //do what you want to do with each item
}
*/

List <Integer> numberList = new List<Integer>{5,6,7,8,9};
//print out the size of this list
System.debug('Item count is ' + numberList.size());

for(Integer each : numberList ){
    System.debug(each);
}

//Create a List of String and add 4 items
//use for each loop

List <String> roles = new List<String>();

roles.add('Clock-master');
roles.add('Type-master');
roles.add('Screen-master');
roles.add('Karate-master');
//use for each loop to iterate over each item
//and print
for(String eachRole : roles){
    System.debug('Current Role is ' + eachRole);
}

//Create a List of Decimal and add 6 values in it
//Iterate over each and print out
List<Decimal> prices= new List<Decimal>{ 10.99, 13.57, 5.60, 9.99, 3.45, 16.77};

for(Decimal eachPrice : prices){
    System.debug('Price is '+ eachPrice);
}

// optionally , create a variable outside of your loop called sum 
// then use your for each loop to get the sum of all decimal numbers

Decimal sum =0 ;

for(Decimal eachPrice : prices){
    sum = sum + eachPrice;
}
System.debug('Sum is ' + sum);