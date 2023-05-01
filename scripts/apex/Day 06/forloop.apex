/*
for (Integer count=1 ; count < 10; count++){
    //repeating stuff here
}

for (Initilization ; loop condition; increment/decrement){
    //repeating stuff here
}
*/

//counting 1-10 using for loop
for(Integer count= 1; count<10; count++ ){
    System.debug(count);
}

System.debug('------');
//skip counting 0-20, by 2, using for loop

for(Integer count=0; count <=20; count += 2){
    System.debug(count);
}

System.debug('---------');
/**
  Count from 10 -1 using for loop 

  Count down from 100 - 0 decreasing number by 10 each time

 */

 for(Integer count=10; count>0 ; count--){
    System.debug(count);
 }

System.debug('----------');

 for(Integer count=100; count>=0; count -= 10){
    System.debug(count);
 }

/*Count from 1-10 using for loop
print out the cunt multipled by 5
output should look like thus:
1X5=5
2x5=10
....
*/

for(Integer count=1 ; count<=10 ; count++ ){
    System.debug(count + ' X 5 = ' +  (count*5)  ); 
}

System.debug('---------');
/**
Continue from above code, 
Above code works great if you just want to get the multiplication table of 5 , we want to be able to provide any number not just 5
 and generate multiplication table of any numbers 
 */

Integer num=5;

for(Integer count=1; count<=10; count++ ){
    System.debug(count + ' X ' + num + ' = ' + (count*num));
}

System.debug('-------');
/**
Give a number , print out below 

YourNumber + 1 = the result
YourNumber + 2 = the result
YourNumber + 3 = the result
..
YourNumber + 10= the result

 */
Integer luckyNumber = 4;
for(Integer i=1; i<=10; i++){
//YourNumber +i = the result
System.debug(luckyNumber + ' + '+ i + '=' + (luckyNumber + i));
}

/**
Get the sum of number from 1-10
and store it into a variable called sum 
 */

 Integer sum = 0 ; 

for(Integer count=1 ; count<=10 ; count++){
    System.debug('Iteration number ' + count); 
    //sum = sum + count ; 
    sum += count ; 
    System.debug('Sum : ' + sum ); 
}
System.debug('Sum of 1 to 10 is ' + sum ) ; 

//Kahoot example
Integer x= 20;
Integer y= 25;
if(++x<(y=y-=4)||(x=x+=4)>y){
    System.debug(x+' , '+ y);
}