/**
Create a List of String with 5 items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key-value pair
   Fill up the Map with 5 key-value pair with above criteria
 */

List<String> strList = new List<String>{'Flowers','Love','Chocolate','Sunshine','Peace'};
Map<String, Integer> happyMap = new Map <String, Integer> ();

happyMap.put(strList.get(0),strList[0].length() );
happyMap.put(strList.get(1),strList[1].length() );
happyMap.put(strList.get(2),strList[2].length() );
happyMap.put(strList.get(3),strList[3].length() );
happyMap.put(strList.get(4),strList[4].length() );

System.debug('happyMap value is : ' + happyMap); 

