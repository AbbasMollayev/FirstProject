//Hometask 1:
// Write an Apex code to print all the odd numbers from 1 to 100 using for loop.

for(Integer num=1; num<=100; num +=2){
    System.debug(num);
}
System.debug('------');

//Hometask 2:
// Create an Integer variable with name upperLimit to control where to stop and initialize it's value to 50. 
// Create a for loop to count from 1 to the upperLimit , try different upperLimit and run again

Integer upperLimit= 33;
for(Integer count=1; count <= upperLimit; count++){
    System.debug(count);
}
System.debug('-------');

//Hometask 3:
// Create an Integer variable called startingNumber
// Create a loop to countdown from starting number till 0. 
Integer startingNumber = 5;
for( Integer countdown=startingNumber; countDown>=0; countDown--){
    System.debug(countDown);
}
System.debug('-------');

//Hometask 4:
//  Create two Integer as startingNumber and endingNumber
// initialize their value (startingNumber should be less than endingNumber in this case).
// use for loop to count up by one starting from startingNumber and end at endingNumber

Integer startingNumber2 = 5 ;
Integer endingNumber = 12 ;
for(Integer count= startingNumber2; count<=endingNumber; count++){
    System.debug(count);
}
System.debug('------');

//Hometask 5:
//  Continue from above , Create a  similar logic as above, this time (startingNumber should be greater than endingNumber in this case). 
//  count down from starting number till the ending number. 

startingNumber2 = 10;
endingNumber = 3;
for(Integer count= startingNumber2; count>=endingNumber; count--){
    System.debug(count);
}
System.debug('-------');

//Hometask 6:
// use for loop to count from 20 to 60 increasing by 2 each time. 
// Print out  20, 22, 24.....40 yay we finished half 42 44 46....60
//  (Print out 'Yay we have finished half' when the count is exactly 40 as above)

for(Integer count=20; count<=60; count+=2  ){
if(count==40){
    System.debug(count + ' Yay we finished half ');
}else{
    System.debug(count);
}
}
System.debug('------');
//Hometask 7:
// Create a loop that print as below 
// Sample Lead 1
// Sample Lead 2
// ...
// Sample Lead 10

Integer count= 1;
while(count<=10){
    System.debug('Sample Lead '+ count++);
}
System.debug('------');

//Hometask 8
// Create a Loop that print as below to generate sample first name last name 
// TestFirst1  ,  TestLast1
// TestFirst2  ,  TestLast2
// TestFirst3  ,  TestLast3
// TestFirst4  ,  TestLast4

Integer num= 1;
Integer num2= 1;
while(num <= 4){
    System.debug('TestFirst'+ num++ + ' , ' + 'TestLast'+ num2++);
}
System.debug('------');

//Hometask 9:
// Similar to above task 
// now create two String variables to store firstName and lastName
// using loop generate sample lead email in below format
// firstNameValue+lastNameValue_1@force.com
// firstNameValue+lastNameValue_2@force.com
// firstNameValue+lastNameValue_3@force.com
// firstNameValue+lastNameValue_4@force.com
// firstNameValue+lastNameValue_5@force.com

String firstName= 'Phoebe';
String lastName= 'Buffay';
Integer count2 = 1;
while(count2 <=5 ){
    System.debug(firstName+lastName + '_' + (count2++)+ '@force.com');
}
System.debug('------');

//Hometask 10:
// Now combine them all to print them together : 
// Declare and initialize 2 String variables called firstName and lastName
// Declare an Integer leadCount and initialize it's value. 
// Create a for loop to print as below
// the program should output below 
// The lead 1 name is jon snow1
// email is jon_snow1@force.com

// The lead 2 name is jon snow2
// email is jon_snow2@force.com


for(Integer leadCount =1; leadCount<=5; leadCount++ ){
    System.debug('The lead '+ leadCount + ' name is ' + firstName+' '+ lastName + leadCount);
    System.debug('Email is ' + firstName+ '_' +lastName+ leadCount+ '@force.com' );
    System.debug('');
}


