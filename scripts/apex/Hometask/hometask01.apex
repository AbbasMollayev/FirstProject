// declare a String variable called season 
// and initialize it's value 
/*
if it's spring  print  Go Camping 
if it's summer  print  Go Swimming 
if It's fall    print  Go Pick Pumpkin
if it's winter   print  Go to sleep 
if nothing match print invalid season 
*/

String season = 'Winter'; 

if(season =='summer'){
System.debug('Go Swimming');
}else if(season =='spring'){
System.debug('Go Camping ');
}else if(season == 'fall'){
System.debug('Go Pick Pumpkin ');
}else if(season =='winter'){
System.debug('Go to Sleep');
}else{
System.debug('Invalid season');
}

//Multi Branch if statement
//if score is less than 0 or more than 100
//print: invalid score
//if score greater than 90, print: You got A
//if score is 80-89, print: You got B
//if score is 65-79, print: You got C
//if score is less than 65, print: You failed

Integer score= 79;
if(score>100||score<0){
    System.debug('Invalid score');
    } else if(score>=90 && score<100){
        System.debug('You got A');
        }else if(score>=80 && score<90){
            System.debug('You got B');
            }else if(score>=65 && score<80){
                System.debug('You got C');
                }else if(score<65){
                    System.debug('You failed');
                    }

//HOMETASK 1;
//Declare three integers and initialize their values
//checks if the first number is greater than the second number and the second number is greater than the third number. 
//If this is true, the program should print "The first number is the largest." 
//If not, the program should print "The first number is not the largest."

Integer num1=10, num2=7, num3=3;

If(num1>num2 && num2>num3){
    System.debug('The first number is the largest');
}else{
    System.debug('The first number is not the largest');
}

//HOMETASK 2:
// Declare and initialize an Integer variable. 
// checks if a given integer is positive, negative, or zero. 
// If the number is positive, the program should print "Positive." 
// If the number is negative, the program should print “negative”
// Else print Zero

Integer num = -30;

if(num>0){
    System.debug('Positive');
}else if(num<0){
    System.debug('Negative');
}else{
    System.debug('Zero');
}

//HOMETASK 3:
// Declare and initialize a String variable with one character
// check the if character is vowel 'a' , 'e', 'o' , 'u' , 'i'
// if true print it's a vowel 
// else print it's not a vowel!

String letter= 'Y';
 if(letter=='a'||letter=='e'||letter=='o'||letter=='u'||letter=='i'){
    System.debug('It is a vowel');
 }else{
    System.debug('It is not a vowel');
 }

//Ternary way
String letterResult= (letter=='a'||letter=='e'||letter=='o'||letter=='u'||letter=='i')?'It is a vowel':'It is not a vowel';
System.debug(letterResult);

//HOMETASK 4:
// Declare and initialize two variables 
// opportunityAmount as Integer 
// stage as String 
// if an opportunityAmount is greater than $100,000 and stage is Closed Won 
// then print out "High Priority Opportunity, follow up immediately ".
// else print out  create an task to follow up next week 

Integer opportunityAmount =250000;
String stage= 'Closed Won';
String followUp = (opportunityAmount>100000 && stage== 'Closed Won')? 'High Priority Opportunity, follow up immediately':'Create an task to follow up next week';

System.debug(followUp);

//HOMESTASK 5:
// Declare and initialize variables as below 
// leadCompanySize as String 
// checks if a Lead's Company size is either "Small" or "Medium". 
// If either of these conditions are met, 
// print a message that says "Good Lead" 
// else take no action 

String leadCompanySize = 'Small';

if (leadCompanySize == 'Small'|| leadCompanySize =='Medium') {
    System.debug('Good Lead');
}

//HOMETASK 6
// Declare and initialize variables as below 
// annualRevenue as Long 
// numberOfEmployees as Integer
// checks if an Account's Annual Revenue is greater than $1,000,000 or if its Number of Employees is greater than 500.
// If either of these conditions are met, display a message that says "High Potential Account".
// else display "Not a High Potential Account"


//Ternary way
Long annualRevenue= 25000000;
Integer numberOfEmployees= 300;
String potentiality= (annualRevenue> 1000000 || numberOfEmployees > 500)? 'High Potential Account' : 'Not a High Potential Account';
System.debug(potentiality);

//if statement way
if(annualRevenue> 1000000 || numberOfEmployees > 500){
    System.debug('High Potential Account');
}else{
    System.debug('Not a High Potential Account');
}

//HOMETASK 7:
// Declare 3 Integer variables and initialize their values. 
// Write a code to print out the largest number by comparing them with each other.

Integer num4= 35, num5= 56, num6= 84;

if (num4>num5 && num5>num6) {
    System.debug('The largest number is '+ num4);
} else if (num5>num4 && num4>num6) {
    System.debug('The largest number is '+ num5);
} else if (num6>num5 && num5>num4) {
    System.debug('The largest number is '+ num6);
}