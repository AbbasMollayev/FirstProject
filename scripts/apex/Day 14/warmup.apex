/*8
DO NOT USE MATH MAX OR MIN
*/

Integer num1 = 10, num2=20;
 Integer largerNumber;

 if(num1>num2){
    largerNumber=num1;
 } else {
    largerNumber=num2;
 }
 System.debug('largerNumber value is : ' + largerNumber); 

 //Ternary way
 Integer largestNumber = (num1>num2)? num1:num2;
 System.debug(largestNumber);

 Double d1 = 15.7d;
 //convert this double value to int
 Integer score1 = d1.intValue();
 System.debug('score1 value is : ' + score1); 

 Integer score2 = Math.round(d1);
System.debug('score2 value is : ' + score2); 

// Math.random() ==> 
// Returns a positive Double that is greater than or equal to 0.0 and less than 1.0.
// if you want to get the number from 0.0 - 10.0 instead 
//   -> simply multiply by 10  ===>  
// if you want to get the number from 50.0 - 60.0 instead 
//   -> simply multiply by 10 and + 50 ===>  
// if you want to get the number from 0.0 - 100.0 instead 
//   -> simply multiply by 100  ===> 
// if you want to get the number from 0.0 - 1000.0 instead 
//   -> simply multiply by 1000  ===>  
// if you want to get the number from 300.0 - 1300.0 instead 
//   -> simply multiply by 1000  + 300 ===> 

Double randomDbl = Math.random()*100;
System.debug('randomDbl value is: ' + randomDbl);
Integer randomInt = Math.round(randomDbl);
System.debug('randomInt value is : ' + randomInt); 

//We can do it in one shot
// Integer randomNum = Math.round(Math.random()*100);
// System.debug('randomNum value is : ' + randomNum); 

for(Integer i=1; i<=50 ;i++) {
    Integer randomNum = Math.round(Math.random()*100);
    System.debug('randomNum value is : ' + randomNum); 
}