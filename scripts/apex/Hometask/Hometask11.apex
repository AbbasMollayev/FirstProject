//Hometask 1:
// Create a Map<String, Integer> to store group name and member count
//    -  Add 5 items into this Map 
//    -  Check if there is a group called Apex Soldiers 
//       -  print out the result in boolean 
//    -  Check if there is a group called Winterfell Vacation
//       -  if so , store the value into a Variable called vMemberCount
//          -  remove this group from the map 
//          -  add new item to the map with below key-value pair
//             -  Winterfell Coders as key , value of vMemberCount as value
//    -  Check if there is a group with 10 members
//       -  if so , decrease the value to 9 

Map <String, Integer> groups = new Map <String, Integer>();
groups.put('Apex Soldiers', 5);
groups.put('Flow Warriors', 10);
groups.put('Soft Skill Guys', 20);
groups.put('Winterfell Vacation', 3);
groups.put('Costco Fans', 15);
System.debug('groups value is : ' + groups); 

Boolean isApexSoldiers = groups.containsKey('Apex Soldiers');
System.debug('isApexSoldiers value is : ' + isApexSoldiers); 

Integer vMemberCount;
if(groups.containsKey('Winterfell Vacation')){
    vMemberCount = groups.get('Winterfell Vacation');
    groups.remove('Winterfell Vacation');
    groups.put('Winterfell Coders', vMemberCount);
}
System.debug('vMemberCount value is : ' + vMemberCount); 

for(String each : groups.keySet()){
    if( groups.get(each)==10){
        groups.put(each, groups.get(each)-1) ;
    }
}
System.debug('groups value is : ' + groups); 

//Hometask 2:
// Given a String variable message contains long string 
//    - for example :  'aaabbcccccddhhhhhhzzzz'
String longWord = 'aaabbcccccddhhhhhhzzzz';
//    - Get a List<String> out of this String containing each characters 
List <String> listOfBla = longWord.split('');
System.debug('listOfBla value is : ' + listOfBla); 
//    - Create an empty Map<String,Integer> called letterFrequencyMap
Map <String, Integer> letterFrequencyMap = new Map <String, Integer> ();
//    - Loop through your list 
//      - store each character as key 
//      - store frequency of each character as value into the map
//      - result should be {a=3, b=2, c=5, d=2, h=6, z=4}
for(String each : listOfBla){
     if(!letterFrequencyMap.containsKey(each)){
        letterFrequencyMap.put(each, 1);
     }else{
        Integer currentCount = letterFrequencyMap.get(each);
        ++currentCount;
        letterFrequencyMap.put(each, currentCount);
     }
}
System.debug('letterFrequencyMap value is : ' + letterFrequencyMap); 
//    - Loop through this Map (using keySet of course)
//      - print out the characters showed up more than twice 
//      - the result should be c , h , a , z 
Integer counter = 0;
for(String each : letterFrequencyMap.keySet()) {
    if(letterFrequencyMap.get(each) > 2){
        System.debug(each);
}
}
 

//Hometask 4:
// Create a new Map<String, Integer> 
//       - store the key into the value of above Map
//       - store the value into the key of above map

Map <Integer, String> romanNumerals = new Map <Integer, String>{
        1 => 'I',
        2 => 'II',
        3 => 'III',
        4 => 'IV',
        5 => 'V'
    };

Map <String, Integer> reversedRomanNumerals = new Map <String, Integer>();
for(Integer each:romanNumerals.keySet()){
    reversedRomanNumerals.put(romanNumerals.get(each), each);
}
System.debug('reversedRomanNumerals value is : ' + reversedRomanNumerals); 

//Hometask 5:
// Create a Map<Integer, String> and fill it up with 5 key-value pairs
Map <Integer, String> scoresOfPlayers = new Map <Integer, String > {
    10 => 'Salah',
    8 => 'Jota',
    7 => 'Alisson',
    6 => 'Van Dijk',
    4 => 'Firmino'
};
//    -  Get the sum of All the Keys 
Integer sumOfKeys = 0;
for(Integer each:scoresOfPlayers.keySet()){
    sumOfKeys += each;
}
System.debug('sumOfKeys value is : ' + sumOfKeys); 
//    -  Join all the values by , and print it out 
String joinedValues = String.join(scoresOfPlayers.values(), ',');
System.debug('joinedValues value is : ' + joinedValues); 

// Hometask 6:
//  Write a program that create a Map<String, Integer>  with 9 values
//    - Create a new map that contains only the keys and values where the value is greater than 10 from first Map.

Map <String, Integer> studies = new Map < String , Integer> ();
studies.put('History', 10);
studies.put('Literature', 12);
studies.put('Math', 11);
studies.put('Physics', 11);
studies.put('Chemistry', 5);
studies.put('Biology', 9);
studies.put('Language', 14);
studies.put('Art', 6);
studies.put('Geography', 9);

Map <String, Integer> highStudies = new Map <String, Integer> ();
for(String each:studies.keySet()){
    if(studies.get(each)>10){
       highStudies.put(each, studies.get(each));
    }
}
System.debug('highStudies value is : ' + highStudies); 

//Hometask 7:
// Map Practice : MapBully (NO LOOP NEEDED)
//    -  Given A Map with key values in it with a.b,c as key and String as values
//    -  for example : {'a'=>'candy', 'b'=>'dirt'}
Map <String, String> lettersAssociations = new Map <String, String> {
    'a'=>'apple',
    'b'=>'banana',
    'c'=>'coconut',
    'd'=>'date'
};
//    -  Follow below requirement to update the Map 
//    -  if the key a has a value (not null), 
//       -  set the key b to have that value
//       -  and set the a to have value nothing 
//       -  basically b is a bully , taking the value and replacing it with the nothing.
if(lettersAssociations.get('a')!=null){
    lettersAssociations.put('b', lettersAssociations.get('a'));
    lettersAssociations.put('a', 'nothing');
}
//    -  You should get this result {a=nothing,b=candy}
System.debug('lettersAssociations value is : ' + lettersAssociations); 
//    -  another example , map with below value should get updated as below
//    -  {'a' => 'candy'}  should be updated to this when you print 
//       -  updated Map : {a=nothing,b=candy}
//    -  another example , map with below value should get updated as below
//    -  {'a'=>'candy', 'b'=> 'carrot', 'c': 'meh'}
//       -  updated map : {a=nothing,b=candy,c=meh} 

//Hometask 8:
// Map Practice : MapShare (NO LOOP NEEDED)
//    -  Given A Map with key values in it with a.b,c as key and String as values
//    -  for example : {'a'=>'candy', 'b'=>'dirt','c'=>'cccc'}
Map <String, String> newLetters = new Map <String, String>();
newLetters.put('a', 'arabic');
newLetters.put('b', 'bohemian');
newLetters.put('c', 'creole');
newLetters.put('d', 'dutch');
//    -  if the key a has a value 
//       -  set the key b to have the same value
if(newLetters.get('a') !=null){
    newLetters.put('b', newLetters.get('a'));
//    -  in all cases remove key c leaving the rest of the map unchanged 
}
newLetters.remove('c');
//    -  so final print result according to this logic will be
//    -  updated Map : {a=candy, b=candy}
//    -  for example : {'b'=>'dirt','c'=>'cccc'} , print the result will be
//       -  updated Map : {b=candy}
//    -  for example : {'a'=>'aaa', 'c'=>'meh','d'=>'hi'} , print result
//       -  updated Map : {a=aaa, b=aaa, d=hi}
System.debug('updated Map value is : ' + newLetters); 

//Hometask 9:
// Create a List<Opportunity> and add 5 valid opportunity with required fields
//    - StageName, Name , CloseDate , Amount 
List <Opportunity> myOpps = new List <Opportunity> ();
myOpps.add(new Opportunity(StageName = 'Prospecting', Name = 'Opp 1', CloseDate = Date.today() + 4, Amount = 4000  ));
myOpps.add(new Opportunity(StageName = 'Needs Analysis', Name = 'Opp 2', CloseDate = Date.today(), Amount = 5000  ));
myOpps.add(new Opportunity(StageName = 'Qualification', Name = 'Opp 3', CloseDate = Date.today() + 5 , Amount = 1500  ));
myOpps.add(new Opportunity(StageName = 'Prospecting', Name = 'Opp 4', CloseDate = Date.today()+7, Amount = 7500  ));
myOpps.add(new Opportunity(StageName = 'Closed Won', Name = 'Opp 5', CloseDate = Date.today(), Amount = 4400  ));
//    - insert into Salesforce
System.debug('myOpps value is : ' + myOpps); 
insert myOpps;
//    - Get a Map<Id, Opportunity> out of this List<Opportunity>
//      - either directly putting the list into () while creating the map 
//      - or Create an Empty Map and use putAll method 
Map <Id,Opportunity> myOppsMap = new Map <Id,Opportunity> ();
myOppsMap.putAll(myOpps);
//      - or use Loop to add it one by one
//    - Create an empty Map<String,Decimal> 
Map <String, Decimal> oppsNameAmount = new Map <String, Decimal> ();
//      - Loop through your List and 
for(Opportunity each:myOpps){
    //      - Add the Opportunity Name field value as Key
    //      - Add the Opportunity Amount field value as Value
    oppsNameAmount.put(each.Name, each.Amount);
}
System.debug('myOppsMap value is : ' + myOppsMap); 
System.debug('oppsNameAmount value is : ' + oppsNameAmount); 


//Hometask 11:
// Create List<Case> with 4 Items with name oldList 
List <Case> oldList = new List <Case> ();
//      - with below fields
//        - Subject set to Sample Case (1,2,3,4)
for(Integer i=1; i<5; i++){
    oldList.add(new Case( Subject = 'Sample Case '+ i));
}
//      - insert into Salesforce
insert oldList;

//    - Create a Map<ID, Case> from above List call it oldMap
Map <Id, Case> oldMap = new Map <Id, Case> ();
//      - It should contain ID of case as key, the Case itself as value
for(Case each:oldList){
    oldMap.put(each.Id, each);
}

//    - Create a new List<Case> called newList
//      - Copy everything from oldList into newList in one shot
List <Case> newList = new List <Case> (oldList);
//    - Now Iterate over your newList with 4 copied Items above
//      - Update the Subject field value to 
//        - Whatever is the current Value followed by string  New
//        - So it will Sample Case (1,2,3,4) New
for(Case each : newList){
    each.Subject = each.Subject + ' New';
}
//    - Print out the oldList variable 
System.debug('oldList value is : ' + oldList); 
//      - Observe It should be the List before the update
//    - Print out the oldMap  variable 
System.debug('oldMap value is : ' + oldMap); 
//      - Observe It should be the Map before the update

//      - Issue a DML statement to reflect the changes in Salesforce
update newList;
//    - Create a Map<ID, Case> from above List call it newMap
Map <Id, Case> newMap = new Map <Id, Case> ();
//       - It should contain ID of case as key, the Case itself as value
for(Case each:newList){
    oldMap.put(each.Id, each);
}
//    - Print out the newList variable 
System.debug('newList value is : ' + newList); 
//      - Observe It should be the List after the update
//    - Print out the newMap  variable 
System.debug('newMap value is : ' + newMap); 
//      - Observe It should be the Map after the update


