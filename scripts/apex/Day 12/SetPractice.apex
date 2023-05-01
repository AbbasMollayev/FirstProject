/**
We can create a Set by copying the content of another set or List
 */

Set<String> itemsSet = new Set<String>{'item1','item2','item3','item4','item5'};
System.debug('items value is : ' + itemsSet); 

//Creating a set by copying everything inside another Set
Set<String> emptySet = new Set<String>(itemsSet); 
System.debug('emptySet value is : ' + emptySet); 

List<Integer> numberList = new List<Integer>{81,22,48,22,52,74,52};
System.debug('numberList value is : ' + numberList); 

Set<Integer> setNumbers = new Set<Integer>(numberList);
System.debug('setNumbers value is : ' + setNumbers); 


