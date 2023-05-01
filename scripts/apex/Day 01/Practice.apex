//This is how we can comment
/*
 This is how we can write 
 multiple comment
*/

System.debug('Hello World');

sYsTeM.dEbUg('More Hello') ; 

// If the single quote need to be used inside String
// It will accidentally end the string 
// you can add backslash right in front of it 
// to instruct computer not to treat it as ending of the string
// just treat it as part of the text

System.debug('Let\'s learn variable');

//Creating and using variable
//DataType variableName = someValueHere

String name= 'Abbas';
//print the value of variable in the log

System.debug(name);
//Concatenation is combining one or more Strings together
// print  My Name is : theValueOfNameVariable
System.debug('My name is: '+(name));

//variables Data type that can store Number
Integer score= 77;
System.debug('Passing score is: '+score);

System.debug('Passing score is: '+ (score+20));//the result would be 7720,we need parenthesis!

System.debug('Passing score is: '+ (score+20));

//variables Data type that can store fractional number
Decimal pi=3.14;
System.debug('The value of pi: '+ pi);

Double price= 199.99;
System.debug('The price value is '+price);


//varibales Data type that can store true or false.
Boolean passed=true;
System.debug('Value of passed bollean variable: '+passed);
//change the value to false and print that out
passed=false;
System.debug('Value of passed boolean variable: '+passed);
 
/*
Apex is case insenitive, but it's good to build good habbit of
following good coding convention
1.Always try to keep data type first letter uppercase the rest lower case
2.Always start your variable with lowercase score
  --if you have more than one word,
  --use camelCase : myScore, theGoodStaff
  */

  // variable Data type that can store Salesforce Record Id
// It's almost like specialized String variable 
// that only store string with valid record Id format
// if anything else is stored, it will throw an error
ID myLeadId = '00Q8W00000gDbIyUAK';
System.debug(myLeadId);

Long distanceToMars= 1000000000000000000L;
System.debug('Distance to Mars long value '+ distanceToMars);

//Quick explanation on some Technical Jargons
//Declaring variable
Integer age ;

//Assigning a value to the variable
age= 20; 

//Declaring variable and initializing it's value
Integer amount= 100;
//We can Reassign value
amount= 200;

//Null as a value
//Integer count; //if variable is not assigned to any value
                //it will get null value
Integer count= null;
System.debug('The value is '+count);

//re-assign the value of count variable to the value of amount variable
count= amount;
System.debug('The value is '+count);

//re-assign the vaue of count variable
//to the value of amount variable +1000
count=amount+ 1000;
System.debug('New Value of count is ' +count);

//Operator +-*/
Integer num1= 100;
Integer num2= 20;
Integer result;
/*
 The addition result between num1 and num2 is resultGoesHere
 The subtraction result between num1 and num2 is resultGoesHere
 The multiplication result between num1 and num2 is resultGoesHere
 The division result between num1 and num2 is resultGoesHere
*/
//addition
result =num1+num2;
System.debug('The addition result between ' +num1+ ' and ' + num2 + ' is ' + result);

//subtraction
result= num1-num2;
System.debug('The subtraction result between ' +num1+ ' and ' + num2 + ' is ' + result);

//multiplication
result=num1*num2;
System.debug('The multiplication result between ' +num1+ ' and ' + num2 + ' is ' + result);

//division
result=num1/num2;
System.debug('The division result between ' +num1+ ' and ' + num2 + ' is ' + result);   

