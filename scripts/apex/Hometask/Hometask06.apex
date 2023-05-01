//Hometask 1:
// Write an Apex code to create an empty List of Strings 
// and add 3 names to it using add() method. then insert 3 more items at index number 1
//  - print them out using both for loop or for each loop

List<String> names = new List<String>();
names.add('Chandler');
names.add('Monica');
names.add('Rachel');

names.add(1,'Joey');
names.add(1,'Ross');
names.add(1,'Phoebe');

for(Integer i=0; i<names.size(); i++){
    System.debug('Name is ' + names.get(i));
}
System.debug('------------------');

for(String each : names){
    System.debug('Name is ' + each);
}

//Hometask 2:
// Write an Apex code to create a List of Strings with 4 items
//  set the value of last item to the value of first item 
//   for example original list values :  item1 , item2, item3, item4 
//                    list values now :  item1 , item2, item3, item1

List<String> companies = new List<String>{'Marshalls','TJ Maxx','Kohls','Ross'};

System.debug('Original list values are : ' + companies);

companies.set(companies.size()-1,companies.get(0));
System.debug('New list values are ' + companies);

//Hometask 3:
// Write an Apex code to create an List of Strings with 6 items 
//     - if this list does not contains 'jon snow'
//         - then insert 'jon snow' at index 4
//     - if it does
//         - remove 'jon snow' and insert it again at index 4

List<String> warriors = new List<String>{'Jon Snow','William Wallace','Joan of Arc','Chingachgook','Aragorn','Spartacus'};

for(Integer i=0 ; i < warriors.size(); i++){
    warriors.get(i);
    if(!(warriors.contains('Jon Snow'))){
      warriors.add(4,'Jon Snow');
    }else if(warriors.get(i)=='Jon Snow'){
        warriors.remove(warriors.indexOf('Jon Snow'));
        warriors.add(4,'Jon Snow');
    }
}
System.debug('List of warriors is : ' + warriors);

//Hometask 4:
// Write an Apex code to create List of 10 String with some duplicates values
// List<String> heroList = new List<String>{'Superman', 'Batman', 'Spiderman', 'Iron Man', 'Wonder Woman',
//  'Captain America', 'Iron Man', 'Iron Man', 'Green Lantern', 'Batman'};

// - Find the count of times 'Iron Man' showed up 

List<String> heroList = new List<String>{'Superman','Batman','Spiderman','Iron Man','Wonder Woman','Captain America',
'Iron Man','Iron Man','Green Lantern','Batman'};

Integer count = 0;
for(String each : heroList){
    if(each == 'Iron Man'){
        ++count;
    }
}
System.debug('Count for Iron Man is : ' + count);

//Hometask 5:
// Continue from above List of 10 String with some duplicates values
// - Print out all indexes of 'Iron Man' in the list 
// - Create another List of Integer and Store the all indexes into new List when looping 
// - print out the size of new List. 

List<Integer> indexOfIronMan = new List<Integer>();

for(Integer i=0; i<heroList.size() ;i++){
    if( heroList.get(i)=='Iron Man'){
       System.debug(i); 
       indexOfIronMan.add(i);
    } 
    }
    System.debug('List of indexes for Iron Man is ' + indexOfIronMan);

//Hometask 6:
// Continue from above list 
// - Write a while loop to check the list contains 'Iron Man' 
//  - if so find index of each Iron Man and remove from the list

while(heroList.contains('Iron Man')){
    heroList.remove(heroList.indexOf('Iron Man'));
}
System.debug('Hero list without Iron Man : ' + heroList); 

//Hometask 7:
// Create an Array of 10 Doubles 
//  - use Array syntax to loop through each item 
//  - get the count of the number is between 10 and 20 or 40-50 
//  - get the sum of the numbers greater than 30

Double[] doubleNumbers = new Double[10];
doubleNumbers[0]=5.6;
doubleNumbers[1]=7.7;
doubleNumbers[2]=8.3;
doubleNumbers[3]=10.9;
doubleNumbers[4]=13.5;
doubleNumbers[5]=15.7;
doubleNumbers[6]=23.3;
doubleNumbers[7]=3.2;
doubleNumbers[8]=15.4;
doubleNumbers[9]=33.3;

Integer count2 = 0;
Double sum  = 0;
for(Integer i=0; i < doubleNumbers.size(); i++){
    Double num = doubleNumbers[i];
    if(num>10 && num<20 || num>40 && num<50){
        ++count2;
    }else if(num >30){
        sum += num;
    }
}
System.debug('the count of the number between 10 and 20 or 40-50 is ' + count2);
System.debug('Sum of the numbers bigger than 30 is  ' + Sum); 


//Hometask 8:
// Create an String Array with 10 elements and print them in reverse order
String[] itemsArray = new String[]{'item1','item2','item3','item4','item5','item6','item7','item8','item9','item10'};
for(Integer i=itemsArray.size()-1; i>=0; i--){
    System.debug(itemsArray[i]);
}

//Hometask 9:
// Create an Boolean Array with 10 elements and count the the number of true value
Boolean[] arrayBoolean = new Boolean[]{true,true,false,true,false,false,false,false,true,true};
Integer countBoolean=0;
for(Boolean each : arrayBoolean){
    if(each==true){
        ++countBoolean;
    }
}
System.debug('countBoolean value is : ' + countBoolean); 

//Hometask 10:
// Create an Array of 10 Integers 
//   - print 'ideal numbers' if it contains both 10 and 5 
//   - print 'Good numbers' if it contains 10 
//   - print 'Ok numbers' if it contains 5
//   - print 'Not so Good numbers' if it does not contain 10 and 5 

Integer[] prices = new Integer[]{11,97,55,39,63,77,18,67,82};

if(prices.contains(10) && prices.contains(5)){
    System.debug('Ideal numbers'); 
}else if(prices.contains(10)){
    System.debug('Good numbers');
}else if(prices.contains(5)){
    System.debug('Ok numbers'); 
}else if(!(prices.contains(10) && prices.contains(5))){
    System.debug('Not so good numbers'); 
}
