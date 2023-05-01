/**
Create  List of 10 Decimal numbers
in loop

print out the last item value without hard coding

in first loop
iterate over the list and print out each items
skip item number 3 and 7 while printing

in second loop
iterate over the list and print out each items
break out of the loop if the number is more than 100
 */

 List<Decimal> numbers = new List<Decimal> {1.11,22.22,100.99,3.33,14.44,200.00,12.50,8.88,9.99,50.00};

Integer lastItem = numbers.size() - 1;
System.debug('Index of the last item is : '+ lastItem);


for(Integer i=0; i < numbers.size(); i++ ){
    if(i == 2 || i ==6){
        continue;
    }
    System.debug('Index # '+i+ ' : '+numbers.get(i));
}


for(Decimal eachNumber: numbers){
    if(eachNumber > 100){
        break;
    }
    System.debug(eachNumber);
}