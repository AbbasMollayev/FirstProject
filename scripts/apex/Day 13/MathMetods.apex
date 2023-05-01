/**
  Math class is a class coming from Apex itself
  It has lof of pre-written code about math that we can just use directly
  Mod operator in math allow you to get the remainder of division
  10 / 3 = 3   1 remain
 */

 Integer num1 = 10;
 Integer num2 = 3;

Integer result = num1/num2;
System.debug('result value is: ' + result);

//Math.mod(num1,num2)=====> remainder of the division
Integer remainder = Math.mod(num1,num2);
System.debug('Remainder value is : ' + remainder);

/**
Odd or Even in Math
Odd number is number that will have remainder of 1 when divided by 2
Even number is number that will have remainder of 0 when divided by 2
 */
 Integer score = 47;
//store the result of checking the number is even or odd into a Boolean variable
 Boolean isEven = Math.mod(score,2)==0;
 System.debug('isEven value is : ' + isEven); 

 //print odd number if score is odd. and print even number if its even
 if(isEven){
    System.debug('Even number'); 
 }else{
    System.debug('Odd number'); 
 }

 //if you want to use it without creating variable
 if( Math.mod(score, 2) ==0 ){
     System.debug('Even number'); 
}else{
     System.debug('Odd number'); 
}

// Math.max(number 1, number 2) ==> return the bigger number
System.debug('which number is bigger : '  + Math.max(11, 99)); 

//Math.min(number 1, number 2)===> return the minimum number
System.debug('which number is smaller : ' + Math.min(23,15)); 

//Math.random()===>
//Returns a positive Double that is greater than or equal to 0.0 and less than 1.0
Double randomDbl =  Math.random() * 100  ; 
System.debug('randomDbl value is : ' + randomDbl); 
// System.debug('randomDbl value is : ' + randomDbl * 100    ); 

Integer randomInteger =   randomDbl.intValue() ; 
System.debug('randomInteger value is : ' + randomInteger); 