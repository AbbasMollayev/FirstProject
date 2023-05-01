//Logical Operators && (AND), ||(OR), !(NOT)

//Shortucut for declaring and assigning multiple variables of same type
Integer num1= 100, num2= 200, num3= 300;

Decimal price1= 699.99, price2= 799.99, price3= 1100.99; 

// store the result of price1 greater than price3
// into a Boolean variable and print it out 
 Boolean isPrice1GreaterThanPrice3=(price1 > price3);
   System.debug('Is price1 greater than price3 ?: '+isPrice1GreaterThanPrice3);
 
// store the result of price1 greater than price2 AND price2 less than price3
// into a Boolean variable and print it out 
 Boolean result1= (price1>price2) && (price3>price2);
System.debug('Is price2 less than price3 and greater than price1 ?: '+ result1);

/*System.debug('Result of price1 greater than price2 ' 
             +  ' AND price2 less than price3: '
             + result1);*/

//Incremeant and Decreament operators to increase or decrease the value by one
//++ used in the beginning of the variable is called pre-increment : ++score
//++ used at the end of the variable is called ppost-increment : score++
//-- used in the beginning of the variable is called pre-decrement : --score
//-- used at the end of the variable is called post-decrement : score--

Integer count= 10;

System.debug('value of count: '+ count);//10

System.debug('value of ++count: '+ ++count );//11

System.debug('value of --count: '+ --count);//10

System.debug('value of count++: '+ count++);//10, but next time is going to be 11
System.debug('value of count: ' + count);//11

System.debug('value of count--: '+ count--);//11, next be 10
System.debug('value of count: '+ count);//10

// Conditional statements : 
//conditionally execute part of the code 

Integer examScore = 77 ; 

// if exam score is more than 66 
// show debug message passed , otherwise show failed 

/*if( examScore > 66 ){
    System.debug('Passed');
}*/   // Without "Failed" part.

if( examScore > 66 ){
    System.debug('Passed');
}else {
    System.debug('Failed');
}

// Create a String variable to store studentName 
// give a value 
// if the value equal Fady , print clockmaster 
// else print No Break

String studentName = 'Fady' ; 
if(studentName == 'Fady'){
 System.debug(' Clockmaster');
 }else {
 System.debug('No Break');      
 }

// Create a variables : 
// annualRevenue as Integer and initialize it's value 
// rating as String 

/* If the annualRevenue greater than 100000 
  assign the value of rating to hot 
  otherwise assign the value of rating to cold 
  print out the rating variable outside your if statement 
*/    

/*Integer annualRevenue= 150000;
String rating;

if(annualRevenue >100000){
    rating= 'hot';
}else {
   rating= 'cold'; 
}
System.debug('Rating is '+ rating);
*/

//ternary operator can be used to conditionally assign the value of a variable
//DataType yourVariableName = (condition)? TrueValue: FalseValue

Integer annualRevenue= 60000;
String rating= (annualRevenue>100000)? 'hot':'cold';
System.debug('Rating is '+ rating);

// declare and initiaze a variable called score1 
// declare a variable called examResult 
// assign the value of examResult according to the score1 > 66 or not
Integer score1= 75;
String examResult= (score1>66)? 'passed':'failed';
System.debug('Exams resut is: '+ examResult);

// declare and initiaze a variable called salary as Integer 
// declare a Double variable called taxRate 
// assign the value of taxRate according to below condition
// if the salary is greater than 100K , taxRate is 0.3 else 0.15

Integer salary=130000;
Double taxRate= (salary>100000)? 0.3: 0.15;
System.debug('Tax Rate is: '+ taxRate);

