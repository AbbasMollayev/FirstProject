/**
Create a List of String with items 
Create a Map to store 
   each word(as key) and character Count of that word(as value) as key-value pair
   Fill up the Map with 5 key-value pair with above criteria
 */

List<String> strList = new List<String>{'Flowers','Love','Chocolate','Sunshine','Peace','Love','Peace','Chocolate','Love'};
Map <String, Integer> frequencyMap = new Map <String, Integer> ();

for(String each : strList) {
    if(!frequencyMap.containsKey(each)){
        frequencyMap.put(each, 1);
    }else{
        Integer currentCount = frequencyMap.get(each);
        frequencyMap.put(each, ++currentCount );
    }
}
 System.debug('frequencyMap value is : ' + frequencyMap);    

