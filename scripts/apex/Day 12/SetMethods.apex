/**
Set is a collection of unique elements
It's an unordered collection meaning there is no index
order is not guaranteed
 */
Set<Integer> numberSet = new Set<Integer>();
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 
 numberSet.add(10); 

 System.debug('numberSet value is : ' + numberSet); 
 // methods

//size(),
System.debug('numberSet.size() value is: ' + numberSet.size());
//clear() : delete all items in the set
numberSet.clear();
 System.debug('numberSet value is : ' + numberSet); 
//isEmpty() : return true if size is 0
System.debug('numberSet is Empty : ' + numberSet.isEmpty());

numberSet.add(10);
numberSet.add(20);
numberSet.add(30);
System.debug('numberSet value is : ' + numberSet);

// contains(valueToCheck)
System.debug('numberSet.contains(10) value is: '+numberSet.contains(10));//true
System.debug('numberSet.contains(15) value is: '+numberSet.contains(15));//false

//remove(valueToDelete)
//UNLIKE list, it expects a value not index
numberSet.remove(30);
System.debug('numberSet value is : ' + numberSet); 

// you can not loop through set using for loop
//because there is no index
// Code snippet : ForEach
// update the collection name
// hit tab to select data type if needed
for(Integer each:numberSet){
    System.debug('Current value: ' + each);
}
