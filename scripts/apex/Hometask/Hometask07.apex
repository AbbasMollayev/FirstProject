//Hometask 1:
// Write an Apex code that create List or Array of 10 Integer values. 
//    - remove duplicate and print it out 
//    - print out the unique item count and difference between total list item count

List<Integer> numberList = new List<Integer>{38,21,88,75,27,44,13,88,21,97};

Set<Integer> setList = new Set<Integer>(numberList); 
System.debug(setList); 
System.debug('The count of unique values is: ' + setList.size());
System.debug('The difference between total list count and count of unique items is: ' + (numberList.size()-setList.size()));

//Hometask 2:
// Write an Apex code that create List or Array of unknown numbers(more than 3) of Integer values.
//    - Store last 3 items into Integer Array
//    - print out the Integer Array

Integer[] unknownNumbers = new Integer[6];
unknownNumbers[0]=6;
unknownNumbers[1]=15;
unknownNumbers[2]=136;
unknownNumbers[3]=43;
unknownNumbers[4]=70;
unknownNumbers[5]=0;

Integer[] newArray=new Integer[3];
newArray[0]=unknownNumbers[unknownNumbers.size()-3];
newArray[1]=unknownNumbers[unknownNumbers.size()-2];
newArray[2]=unknownNumbers[unknownNumbers.size()-1];
System.debug(newArray);

//Hometask 3:
// Write an Apex code that create List or Array of 10 Integer values. 
//    - create another List or Array and
//    - store the items in reverse order
//    - print it out 

Integer[] prices = new Integer[]{45,86,47,10,65,17,4,66,78,10};

List<Integer> reversePrices = new List<Integer>();

for(Integer i=prices.size()-1; i >= 0; i--){
     reversePrices.add(prices[i]);
}
System.debug('Prices in reverse order are: ' + reversePrices);

//Hometask 4:
// Write an Apex code that create List or Array of 10 String values
//    - create a empty Set of String 
//    - store all the string that is not equal to admin or developer in it
//    - print out the size and items in loop 

String[] strList = new String[]{'item1','admin','item3','item4','item5','developer','item7','item8','item9','item10'};

Set<String> itemsSet = new Set<String>();
for(String each:strList){
    if(each =='admin' || each =='developer'){
        continue;
    }
    itemsSet.add(each);
    System.debug('The size of set is: ' + itemsSet.size());
    System.debug('Items in the set are: ' + itemsSet); 
}

//Hometask 5:
// Write an Apex code that create List or Array of 5 Integer values. 
//    - double the value of each item 
//    - for example {1,4,6,4,6} => {2,8,12,8,12}

List<Integer> orderNum = new List<Integer>{79,36,49,18,82};

for(Integer i=0; i < orderNum.size(); i++){
    orderNum.set(i,orderNum.get(i)*2);
}
System.debug('Doubled values are: ' + orderNum);

//Hometask 6:
// Write an Apex code that create List or Array of 5 String values
//    - add the word sf+index at the end of each element
//    - {'Anakin','Obivan','Yoda','Windu','Ahsoka'} => 
//    - {'Yoda sf1' 'Anakin sf2','Obivan sf3','Windu sf4','Ahsoka sf5'}

String[] starWarsCharacters = new String[]{'Anakin','Obivan','Yoda','Windu','Ahsoka'};
  
for(Integer i=0; i<starWarsCharacters.size(); i++){
    starWarsCharacters.set(i,starWarsCharacters.get(i)+' sf1');
}
System.debug('Star Wars characters are: ' + starWarsCharacters);

//Hometask 7:
// Write an Apex code that create List or Array of 5 String values
//    - Create a String variable called joinedText
//    - Loop through all the items and append one item after another into joinedText variable separated by hyfen(-) 
//    and last item should not have -
//    - Example : Your list {'This','is','The','Way','Student'}
//      - value of joinedText 'This-is-The-Way-Student'

List<String> groceries = new List<String>{'Bread','Juice','Cheese','Chocolate','Eggs'};

String joinedText = groceries.get(0);
for(Integer i=1; i<groceries.size() ;i++){
    joinedText+='-'+groceries.get(i);
}
System.debug(joinedText); 

//Hometask 8:
// Write an Apex code that create List or Array of 7 String values
//    - store the the index of item in the middle in to variable mid1
//    - now imagine you unknown (odd) number of items in the list and find out a way to 
// dynamically find the index of item in the middle 
//      - if you have 7 items : number 4 item is in the middle
//      - if you have 17 items : number 9 item is in the middle and so on
//      - no loop needed here
//    - print out the value of item in the middle

List<String> countries = new List<String>{'USA','Canada','Mexico','Brazil','Chile','Peru','Argentina'};
Integer middleIndex= countries.size()/2;
String mid1= countries.get(middleIndex);
System.debug('Country with middle index is: ' + mid1);

//Hometask 9:
// Write an Apex code that create List or Array of 8 String values
//    - store the the index of 2 items in the middle into 2 variables mid1, mid2
//    - now imagine you unknown (even) number of items in the list and find out a way to
//  dynamically find the index of item in the middle 
//      - if you have 8 items : number 4 and 6 items are in the middle
//      - if you have 18 items : number 8 and 9 items are in the middle and so on
//      - no loop needed here
//    - print out the value of items in the middle

List<String> countries2 = new List<String>{'USA','Canada','Mexico','Brazil','Chile','Peru','Argentina','Ecuador'};
Integer middleIndex1= countries.size()/2;
Integer middleIndex2 =countries.size()/2+1;
String mid= countries2.get(middleIndex1) + ' and ' + countries2.get(middleIndex2);
System.debug('Country with middle index is: ' + mid);

//Hometask 10:
//  Write an Apex code that create 2 Set of Integer with 5 values
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//       -  HINT : containsAll method
//    -  add all items from the set 1 into set 2
//    -  check if all items in set 2 exists in set 1
//    -  check if all items in set 1 exists in set 2
//    -  remove all items exists in set 2 from set 1
//       -  HINT : removeAll method

Set<Integer> countSet = new Set<Integer>{75,77,15,60,72};
Set<Integer> countSet2 = new Set<Integer>{54,63,47,51,28};

Boolean set1ContainsSet2 = countSet.containsAll(countSet2);
Boolean set2ContainsSet1 = countSet2.containsAll(countSet);
System.debug(set1ContainsSet2);

countSet2.addAll(countSet);
set1ContainsSet2 = countSet.containsAll(countSet2);
set2ContainsSet1 = countSet2.containsAll(countSet);
System.debug(countSet2); 
System.debug('Do items from set 1 exist in set 2: ' + set2ContainsSet1);
System.debug('Do items from set 2 exist in set 1: ' + set1ContainsSet2);

countSet2.removeAll(countSet);
System.debug(countSet2); 

//Hometask 11:
// Write an Apex code that create 2 Set of String with 5 values
//    - update set1 to only retain the elements exists in both set1 and set2
//       -  HINT : retainAll method

Set<String> stringSet = new Set<String>{'item1','item2','item3','item4','item5'};
Set<String> stringSet2 = new Set<String>{'item6','item7','item3','item4','item5'};

stringSet.retainAll(stringSet2);
System.debug('Elements in both sets are: ' + stringSet); 

//Hometask 12:
// Write an Apex code that create Set of 10 Integer
//    - create a variable called average 
//    - calculate the average  sum/item count and print it out
//    - Create empty List of Integer
//    - store only items above average in above Set
//    - removeAll items that below average from the Set 

Set<Integer> scores = new Set<Integer>{14,34,99,69,51,8,23,76,66,90};
Integer average;
Integer sum=0;
for(Integer each:scores){
    sum = sum + each;
}
average = sum/(scores.size()-1);
System.debug('Average is: ' + average);

Set<Integer> newSet = new Set<Integer>();
for(Integer each:scores){
    if(each > average){
        newSet.add(each);
    }else if(each<average){
        scores.remove(each);
    }
}
System.debug('New set is: '+newSet);
System.debug('First set without numbers below average: '+scores);

//Hometask 13:
// Write an Apex code that create List of 10 Integer values as scoreList
//     - get the count of numbers less than 0 or greater than 100
//     - in separate loop, update the value of items as below
//       - if the Integer less than 0 update it to 0 
//       - if the Integer more than 100 update it to 100
//     - HINT : Array syntax is much simpler when it comes to update

List <Integer> scoreList = new List <Integer> {1,2,-3,4,5,60,70,108,90,110};

Integer countNum =0;
for(Integer i=0; i<scoreList.size() ; i++) {
    if( scoreList.get(i)>100||scoreList.get(i)<0 ){
        countNum++;
    }
}
System.debug('Count of num bigger than 100: '+countNum); 

for(Integer i=0; i<scoreList.size() ; i++) {
    if( scoreList.get(i)<0 ){
        scoreList.set(i,0);
    }else if(scoreList.get(i)>100){
            scoreList.set(i,100);
    }
}
System.debug('ScoreList after updates: '+scoreList);