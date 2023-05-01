//Hometask 1:
// Write an Apex code that 
//    - create a variable to store 1 Random double between 0 to 100 Math.random()*100
//    - print it out 
//    - print 'pass' if the number is greater than 65
//    - print 'A+' if the number is between 95-100
//    - run multiple time to observer the result

Double randomNum = Math.random()*100;
System.debug('randomNum value is : ' + randomNum); 
if(randomNum>65){
    System.debug('pass');
}else if(randomNum >95 && randomNum <100){
    System.debug('A+');
}

//Hometask 2:
// Write an Apex code that create 1 Random double between 0 to 100
//    - print it out 
//    - if the number is even -> print 'even number!!!' 
//    - if it can be divided by 5 with no remainder -> print 'cool number'
//    - if it can be divided by 7 with remainder 3  -> print 'cooler number' 

Double randomNum2 = Math.random()*100;
System.debug('randomNum2 value is : ' + randomNum2); 
Integer randomNumInt = randomNum2.intValue();
Boolean isEven = Math.mod(randomNumInt, 2)== 0;

if(isEven){
    System.debug('even number!!!');
}else if(Math.mod(randomNumInt, 5)== 0){
    System.debug('cool number'); 
}else if(Math.mod(randomNumInt, 7)== 3){
    System.debug('cooler number'); 
}

//Hometask 3:
// Write an Apex code that store list of 10 Integers 
//    - print out all odd numbers
//    - get the count of the odd numbers and print it out
//    - get the sum of the odd numbers and print it out 

List<Integer> numberList = new List<Integer>{65,55,48,76,67,13,27,5,98,34};

Integer countOfOdd = 0;
Integer sumOfOdd = 0;
for(Integer each:numberList){
    if(Math.mod(each, 2)==0){
        System.debug('odd number: ' + each);
        ++countOfOdd;
        sumOfOdd += each;
    }
}
System.debug('countOfOdd value is : ' + countOfOdd); 
System.debug('sumOfOdd value is : ' + sumOfOdd); 

//Hometask 4:
// Write an Apex code that create 2 Random Integer variables 
//    - use Math.random()*100 to assign random values to both of them
//      - (make sure to convert the double value to Integer)
//    - print both variable values 
//    - print the larger number value

Double firstRandom = Math.random()*100;
Double secondRandom = Math.random()*100;

firstRandom = firstRandom.intValue();
secondRandom = secondRandom.intValue();

System.debug('firstRandom value is : ' + firstRandom); 
System.debug('secondRandom value is : ' + secondRandom); 
System.debug('The larger number value is: ' + Math.max(firstRandom, secondRandom));

//Hometask 5:
// Write an Apex code that 
//    - print 10 random Integer values between 1-1000 in 10 lines (loop)

for(Integer i=1; i<11; i++){
    Double randomValues = Math.random()*1000;
    randomValues = randomValues.intValue();
    System.debug('randomValues value is : ' + randomValues); 
}

//Hometask 6:
// Inspired by above code, 
//    - Write an Apex code that 
//      - store 10 random Integer values between 1-100 into a List of Integer
//    - print out the value 
//    - get the sum of the numbers 
//    - get the average of the numbers

List <Integer> randomValuesList = new List <Integer> ();
Integer sumOfTheValues = 0;
for(Integer i=1; i<11; i++){
    Double randomValues2 = Math.random()*100; 
    randomValuesList.add(randomValues2.intValue());
    sumOfTheValues += randomValues2.intValue();
}
Integer averageOfTheValues = (sumOfTheValues/randomValuesList.size());
System.debug('randomValuesList value is : ' + randomValuesList); 
System.debug('sumOfTheValues value is : ' + sumOfTheValues); 
System.debug('averageOfTheValues value is : ' + averageOfTheValues); 

//Hometask 7:
// Create a List of 10 String with your own values
//    - create a Integer variable called randomIndex
//    - assign the value to random Integer between (between 0-9)
//    - use above index to print out the value at that index
//    - (wait did we just crack how lottery system work?) 

List<String> strList = new List<String>{'Vermont','New Hampshire','Maine','Virginia','Arizona',
                                        'Nevada','Florida','Tennessee','Maryland','New York'};
Integer randomIndex;
Double random = Math.random()*9;
randomIndex = random.intValue();
System.debug('Random state from the list is: ' + strList.get(randomIndex));

//Hometask 8:
//  Write an Apex code that create List of 10 Integers
//    - create a variable called largestValue and assign it to first item in the list
//    - use for each loop to loop through each item
//    - inside the loop re-assign largestValue to 
//      - the result of Math.max(largestValue, each)
//    - print out largestValue outside the loop
//    - and that's how we can get max values in List of Integers
//    - try to change the values of List item and run again

List<Integer> numbersList = new List<Integer>{67,14,67,15,17,75,94,8,44,65};
Integer largestValue = numbersList.get(0);
for(Integer each:numbersList){
    largestValue = Math.max(largestValue, each);
}
System.debug('largestValue value is : ' + largestValue); 

//Hometask 9:
// inspired by above, now use same approach to find smallestValue in List of 10 Integers
//    - create a variable called smallestValue and assign it to first item in the list
//    - use for each loop to loop through each item
//    - inside the loop re-assign smallestValue to 
//      - the result of Math.min(smallestValue, each)
//    - print out smallestValue outside the loop
//    - and that's how we can get min values in List of Integers
//    - try to change the values of List item and run again 

Integer smallestValue = numbersList.get(0);
for(Integer each:numbersList){
    smallestValue = Math.min(smallestValue, each);
}
System.debug('smallestValue value is : ' + smallestValue); 

//Hometask 10:
//  Write an Apex code that create a role List of 10 String 
//    - join each item by space and store it into a String variable joined text 
//      - and print it out
//    - loop through the list 
//      - print out each item along with character count in each item
//      - in this format : 'admin has 5 characters'

//    - loop through the list 
//      - if it contains('dev') print out the items in UPPERCASE
//      - if it contains('admin') print out the items removing the word admin : str.remove('admin')

List<String> roles = new List<String>{'HR','admin','architect','developer','QA engineer','business analyst',
                                      'sales person','marketing analyst','security analyst','sales person'};
String joinedText = roles.get(0);
for(Integer i=1; i<roles.size();i++){
    joinedText += ' '+roles.get(i);
}
System.debug('joinedText value is : ' + joinedText); 

for(String each:roles){
    System.debug(each + ' has ' + each.length()+ ' characters');
}

for(String each:roles){
    if(each.contains('dev')){
        System.debug(each.toUpperCase());
    }else if(each.contains('admin')){
        System.debug(each.remove('admin'));
    }
}
