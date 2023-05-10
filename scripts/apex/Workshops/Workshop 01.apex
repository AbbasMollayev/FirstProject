/*
1. Create a list of Decimal named 'cheapList' and add these 5 elements into the list. (2.75, 5.99, 8.25, 9.50, 9.99)
2. Create another list of Decimal named 'priceyList' and add these 6 elements into the list. (15.75, 5.99, 19.25, 25.50, 9.99, 7.50)
3. If any element in the 'priceyList' is less than 10, add that element into 'cheapList'.
4. Also, remove those elements (with the value of less than 10) from the 'priceyList'.
5. Finally, print out the elements in both lists and the size of the lists.
*/

List <Decimal> cheapList = new List <Decimal> {2.75, 5.99, 8.25, 9.50, 9.99};

List <Decimal> priceyList = new List <Decimal> {15.75, 5.99, 19.25, 25.50, 9.99, 7.50};

for(Decimal eachPricey:priceyList){
    if(eachPricey < 10){
        cheapList.add(eachPricey);
    }
}

List <Decimal> priceyList2 = new List <Decimal> ();
for(Decimal eachPrice : priceyList){
    if(eachPrice > 10){
        priceyList2.add(eachPrice);
    }
}

System.debug('Prices in cheap List are : ' + cheapList);
System.debug('Prices in pricey list are : ' + priceyList2);
System.debug('Size of cheap list is : ' + cheapList.size());
System.debug('Size of pricey list is : ' + priceyList2.size());

/*1. Create a list of Integer named "orderNumbers".
  2. Add numbers between 1-20 into the list. 
  3. Check if the size of the list is 20 and print out the result as "true" or "false"
  4. Print out each number in the list as 'Order Number X' except 5, 10 and 15.
  */

 List <Integer> orderNumbers = new List <Integer> ();
 //Add numbers between 1-20 into the list. 
 for(Integer i=1; i<=20; i++){
    orderNumbers.add(i);
 }
System.debug('The numbers in the list : ' + orderNumbers);
//Check if the size of the list is 20 and print out the result as "true" or "false"
Integer listSize = orderNumbers.size();
Boolean isSize20 = (orderNumbers.size() == 20);
System.debug('size of the list is 20 : ' + isSize20);
//Print out each number in the list as 'Order Number X' except 5, 10 and 15.
for(Integer eachNumber : orderNumbers){
    if(eachNumber == 5||eachNumber == 10|| eachNumber == 15){
        continue;
    }
    System.debug('Order Number is ' + eachNumber);
}
System.debug('------------------');
//2nd Solution
for(Integer eachNumber : orderNumbers){
    if(eachNumber != 5 && eachNumber != 10 && eachNumber != 15){
        System.debug('Order Number is ' + eachNumber);
    }
}
System.debug('------------------');
//3rd Solution

List <Integer> doNotPrint = new List <Integer> {5,10,15};

for(Integer eachNumber:orderNumbers){
    if(doNotPrint.contains(eachNumber)){
    continue;
    }
    System.debug('Order Number is ' + eachNumber);
}

/*
1. Create a list of Strings that represent the names of accounts. Add some duplicate values.
2. Add an account name 'Starbucks' to the first index of the list. Print out the list and its size.
3. Replace the first account name in the list with value 'Panera Bread'. Print out the new list and its size.
4. Add the number 50 to the list as an Integer datatype??? Print out the new list??? 
5. Print out only the first element/item in the list. 
6. Find out how many unique names showed up in the list by creating a Set.
    a. Create an empty Set of String 
    b. Iterate over names List using for each loop
    c. use add method of Set to add each items into Set
    d. outside the loop print out the set and the size of the set
7. Try to add a duplicate value to the set. Check the size of the set after adding a duplicate value.
8. Create a Boolean variable 'containsSony', check if there is an account name 'Sony' in the Set, and assign the returning value to the Boolean variable 'containsSony'.
9. If there is an account name 'Sony' in the Set, remove it from the Set. 
10. Clear all the elements of the Set and check if the set is empty.
*/

List <String> accountNames = new List <String> {'Ford', 'CloudKicks', 'Tesla','Tesla', 'Whole Foods', 'Ford', 'Sony','Disney',
'Tesla', 'Sony'};

//2.Add an account name 'Starbucks' to the first index of the list. Print out the list and its size.
accountNames.add(0,'Starbucks');
System.debug(accountNames.size());
System.debug(accountNames);

//3.Replace the first account name in the list with value 'Panera Bread'. Print out the new list and its size.
accountNames.set(0,'Panera Bread');
System.debug(accountNames.size());
System.debug(accountNames);

//4.Add the number 50 to the list as an Integer datatype??? Print out the new list??? 
//IMPOSSIBLE to use different data type in the List!!

//5.Print out only the first element/item in the list. 
System.debug(accountNames.get(0));

//6.Find out how many unique names showed up in the list by creating a Set.
    // a. Create an empty Set of String 
    // b. Iterate over names List using for each loop
    // c. use add method of Set to add each items into Set
    // d. outside the loop print out the set and the size of the set

    Set <String> uniqueAccounts = new Set <String> ();
    for(String eachAccount:accountNames){
        uniqueAccounts.add(eachAccount);
    }
    System.debug(uniqueAccounts);
    System.debug('Size of the set is : ' + uniqueAccounts.size());

//7. Try to add a duplicate value to the set. Check the size of the set after adding a duplicate value.
uniqueAccounts.add('Disney');
System.debug(uniqueAccounts.size());

// 8. Create a Boolean variable 'containsSony',
//  check if there is an account name 'Sony' in the Set, 
// and assign the returning value to the Boolean variable 'containsSony'.

Boolean containsSony = uniqueAccounts.contains('Sony');
System.debug('Does Set contain Sony : ' + containsSony);

// 9. If there is an account name 'Sony' in the Set, remove it from the Set. 
uniqueAccounts.remove('Sony');
System.debug(uniqueAccounts.size());

//10. Clear all the elements of the Set and check if the set is empty.
uniqueAccounts.clear();
System.debug('Is the set empty: ' + uniqueAccounts.isEmpty());

String message = 'APEX mAde iT Easy to wOrk With SAlesforce eAsy DAtabase salesforce ';
List<String> messageList = message.split(' ');
System.debug('messageList value is : ' + messageList);
for(String each : messageList) {
messageList.set(messageList.indexOf(each), each.capitalize());
}
System.debug(messageList);

String [] array1 = new String [10];
array1[0]= 'A';
System.debug('array1 value is : ' + array1); 

House.printIt();
House h1 = new House ('Victorian');

Order o1 = new Order ('Comp', 'Ahmed', 45.99);
o1.printOrder();


