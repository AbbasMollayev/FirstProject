/*
Extract varibles from below sentence
create variables with proper type
and use it in debug statement to show in the log

My name is Abbas
I am 28 years old
I live in VA State
I attend class daily (trueOrFalse)
I am X.XX feet tall
*/

String name= 'Abbas';
Integer age= 28;
String state= 'VA';
Boolean dailyAttendance= true;
Double height= 5.8;

System.debug('My name is '+name);
System.debug('I am '+age+ ' years old');
System.debug('I live in '+state+' State');
System.debug('I attend class daily: '+dailyAttendance);
System.debug('I am '+height+' feet tall');

//Also we can do it in one line
System.debug('My Name is ' +   name  
             + '. I am ' +  age + ' years old.' 
             + 'I live in ' + state + ' State.'
             + 'I attend class daily ' + dailyAttendance
             + 'I am ' + height + ' feet tall' );
//Create multiple variable with same type in one line
/*
Integer num1= 10;
Integer num2= 20;
Integer num3= 30;
*/
//It can be done easier, as below
Integer num1= 10, num2= 20, num3= 30;

//Realtional Operators : > , >= , < , == , != <>
//It take two items and return true or false result

//Check if num1 is greater than num2 and return the result into a variable
Boolean isNum1GreaterThanNum2 = num1 > num2;//false
System.debug('Is num1 greater than num2 '+ isNum1GreaterThanNum2);

Boolean isNum2LessThanNum3 = num2<num3; //true
System.debug('Is number2 less than number3?: '+isNum2LessThanNum3);

//Compare if num1 is greater than or equal num3 and driectly print out the result
System.debug('Is num1 greater or equal num3?: '+(num1>=num3));

//== is checking for equality of 2 or more items, = is ssignment operator!

//check if num3 value is 30 or not
System.debug('Is num3 and num2 equal?: ' + (num3==num2));

//Check for Inequality of 2 or more items <> !=
System.debug('Is num2 not equal to num3?: '+(num2!=num3));

String language = 'Apex';
//== on string equality check is case insensitive
System.debug('Is the language apex or not?: '+ (language=='Apex'));

//Logical Operators: AND(&&), OR(||), NOT(!) 

Integer num4= 40, num5= 50, num6= 60;

//is num4 more than 20 and less that 45
//store the result into a boolean variable and print it out
Boolean isNum4Between20And45 = (num4 >20) && (num4<45);//ture
System.debug('Is '+num4 +' more than 20 and less that 45?: '+isNum4Between20And45);//true
System.debug('Is num4 more than 20 and less that 45?: '+isNum4Between20And45);//true

//Check if num5 is greater than 100 or less than 20
Boolean isNum5Greater100OrLessThan20 = (num5>100) || (num5<20);//false
System.debug('Is num5 greater than 100 or less than 20?:'+ isNum5Greater100OrLessThan20);
System.debug('Is '+num5+' greater than 100 or less than 20?:'+ isNum5Greater100OrLessThan20);

System.debug( isNum4Between20And45  ); //true
System.debug(!isNum4Between20And45 );  //false, because of exclamation mark!

System.debug(true);//true
System.debug(!true);//false
System.debug(false);//false
System.debug(!false);//true

// ------Compound Operator. : += -= *= /=

Integer score = 100 ; 
//increase the value of the score by 5
//score= score+ 5 ; //105
score += 5; //105
System.debug('increase the value of the score by 5 : '+score );

//decrease the value of the score by 55
//score= score-55; //50
score -= 55; //50
System.debug('decrease the value of the score by 55 : '+score);

//double the value of score (multiply by 2)
//score= score*2 ; //100
score *= 2; //100
System.debug('double the value of score : '+score);

//divide the current value of score by 4 and reassign
//score = score/4; //25
score /= 4; //25
System.debug('divide the current value of score by 4 : '+ score);

//using += for String
String myName ='Jon';
//name = myName +'Snow';
myName += ' Snow';//Jon Snow
System.debug('Name is: '+ myName);
// Jon Snow of Winterfell
myName += ' of Winterfell';
System.debug('Name is: '+ myName);

//Increment and Decrement Operator: ++, --

Integer myAge = 20;

//increase the value by 1
//myAge = myAge+1 ; //21
//myAge += 1; //21
 ++myAge; //21
    System.debug('Age is '+myAge);

//decrease the value by 1
//myAge = myAge-1 ; //20
//myAge -= 1; //20
--myAge; //20
  System.debug('Age is '+myAge);


