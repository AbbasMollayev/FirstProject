//Hometask 1:
// Write a program that calculates the sum of all odd numbers from 1 to 100 using a for loop.
// (try out the same with while loop and do while loop as practice)

//for loop
// Integer sumOfOdd=0;
// for(Integer count=1; count<=100; count += 2){
//     sumOfOdd = sumOfOdd+count;
// }
//     System.debug('Sum of all odd numbers is '+ sumOfOdd);

//while loop
Integer sumOfOdd=0;
Integer count=1;
while( count<100){
    sumOfOdd = sumOfOdd+count;
    count += 2;
}
System.debug('Sum of all odd numbers is '+ sumOfOdd);

//Hometask 2
// Write a program that store the even numbers from 1 to 20 into List of Integer
//   then write an apex code to get the sum of all items in the list. 

List <Integer> evenNumbers = new List <Integer> ();
for(Integer even=2; even<=20; even+=2){
     evenNumbers.add(even);
}
System.debug(evenNumbers);

Integer sumOfList=0;
for(Integer eachEven:evenNumbers){
    sumOfList += eachEven;
}
System.debug('Sum of all even numbers on the list is '+sumOfList);

//Hometask 3
// Write a program that store 10 random Decimal numbers in List of Decimal
//  print out the size of the list 
//  print out the sum of all numbers
//  print out the average of all numbers 
//  now try to go back to the code where you added elements , add more items into the list and run your program again to see if it works. 

List <Decimal> randomNum = new List<Decimal>{2.3 ,4.5 ,6.6 ,7.8 ,10.9, 14.2, 7.14, 20.35, 25.5, 31.4};

System.debug('The size of the list is '+ randomNum.size());
Decimal sum=0;
Decimal average=0;
for(Decimal eachRandomNum:randomNum ){
    sum += eachRandomNum;
    average = sum/randomNum.size();
}
System.debug('Sum of all numbers on the list is  '+sum);
System.debug('Average of all numbers on the list is '+average);

//Hometask 4:
// Write a program that store 10 Long(data type) values into List of Long 
//    (it should be combination of positive and negative numbers) 

//    print out the sum of positive numbers 
//    print out the count of positive numbers 
//    print out the count of negative numbers 

List <Long> numbers = new List <Long> {-4, -3, -1, 3, 8, 11, -23, 27, 34, 77, 89};

Long sumPositive = 0; 
Integer countPos=0;
Integer countNeg=0;
for(Long eachNumber:numbers){
    if(eachNumber>0){
    sumPositive += eachNumber;
    countPos++;
}else{
    countNeg++;
}
}
System.debug('Sum of the positive numbers is '+ sumPositive);
System.debug('Count of positive numbers is '+countPos );
System.debug('Count of negative numbers is '+countNeg );

//Hometask 5:
// Create a List of 10 names into List of String with some duplicate value 
//    find out how many unique names showed up in the list using below approach
//    1. create an empty Set of String 
//    2. Iterate over names List using for each loop
//    3. use add method of Set to add each items into Set
//    4. outside the loop print out the size of set

List <String> names = new List <String> {'Ali', 'Elif', 'Dua', 'Hyder', 'Ahmed', 'Nigar', 'Ali', 'Dua', 'Deaton',' Shabnam'};
Set <String> uniqueNames = new Set <String> ();
for(String eachName:names){
    uniqueNames.add(eachName);
}
System.debug('There are '+uniqueNames.size()+ ' unique names in the Set');

//Hometask 6:
// Write a program that can create X sample List name according to given number as below 
//   1. create a variable called leadCount as Integer and initialize to 4
//   2. create a empty List of String 
//   3. use for loop to add items to List to generate as below 
    
//     Sample Lead 1
//     Sample Lead 2
//     Sample Lead 3
//     Sample Lead 4
    
//   4. print out the List variable and the size 
//   5. try changing the leadCount and run your code again 

Integer leadCount=5;
List <String> sampleLeads = new List <String> ();

for(Integer count=1; count<=leadCount; count++){
    sampleLeads.add('Sample Lead ' + count );
}
for(String eachSample:sampleLeads){
    System.debug(eachSample);
 }
System.debug('Sample Leads count is '+ sampleLeads.size());

//Hometask 7:
// Similar to above task 
//   1. now create two String variables to store firstName and lastName
//   2. create a variable called leadCount as Integer and initialize to 5
//   2. Create an empty List of String 
//   3. using loop generate sample lead email in below format and add it to the list
  
//   firstNameValue+lastNameValue_1@force.com
//   firstNameValue+lastNameValue_2@force.com
//   firstNameValue+lastNameValue_3@force.com
//   firstNameValue+lastNameValue_4@force.com
//   firstNameValue+lastNameValue_5@force.com
  
//   4. try changing the leadCount and run your code again 

String firstName = 'Bernie' ;
String lastName = 'Sanders';
Integer leadCount2 =  7;
List <String> leadEmails = new List <String> ();

for(Integer count=1; count<= leadCount2; count++){
    leadEmails.add(firstName + '+' + lastName+ '_' +count+ '@force.com');
}

for(String eachEmail:leadEmails){
    System.debug(eachEmail);
}

//Hometask 8:
// Create a program that take some item from One List to Another according to the condition 
//   1. Create List of Integer with 9 elements|items 
//   2. Create another empty List of Integer 
//   3. Iterate over the first List using for each loop 
//     - check if the number is between 5-10 
//       - if so add this number to second list using secondList.add(itemHere) ; 

//   4. Print out the first List 
//   5. Print out the second List and it's size

List <Integer> items = new List <Integer> {1,1,2,3,5,8,13,21,34};
List <Integer> anotherItems = new List <Integer> ();

for(Integer eachItem:items){
    if(eachItem >5 && eachItem<10){
        anotherItems.add(eachItem);
    }
}
System.debug(items);
System.debug('Second List : '+anotherItems);
System.debug('Second List size is: '+anotherItems.size());

//Hometask 9:
// Write a program that takes a list of strings that represent the names of account owners
//  and counts the number of times each name appears in the list.

List <String> accountOwners = new List <String> {'Jack','John', 'Yusuf','Jack', 'John'};
Set <String> namesResult = new Set <String>();
for(String each : accountOwners){
    Integer countNames = 0;
    for(String each1 : accountOwners){
        if(each == each1){
            countNames++;   
        }
    }
    namesResult.add('Name '+ each +' appears ' + countNames+ ' times');
}
System.debug(namesResult);


//Hometask 10:
//  Write a program that takes a list of integers that represent the amounts of money spent by a set of users
//  and calculates the number of users who spent more than a certain amount (like 10000) of money.
// in another word, create a list of Integer and get the count of numbers that over 10000 

List <Integer> amountSpent = new List <Integer> {8000, 7500, 9000, 11000, 13000, 25000};
Integer userCount=0;
for(Integer eachAmount:amountSpent){
    if( eachAmount>10000 ){
        userCount ++;
    }
}
System.debug('Number of users who spent more than 10000 is : '+ userCount);

