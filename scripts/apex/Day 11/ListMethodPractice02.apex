List<Integer> numberList = new List<Integer>{19,47,57,42,10};
System.debug('numberList value is : ' + numberList); 

numberList.add(100);

//add(index, value)
numberList.add(0, 999);
System.debug('numberList value is : ' + numberList); 

// add value 888 into index location
numberList.add(2, 888);
System.debug('numberList value is : ' + numberList); 

//set(index, newValueYouWantToUpdate)
/**
index : where do you want to update the value (which index location)
newValueYouWantToUpdate : what's the value
 */
 numberList.set(0, 777);
 System.debug('numberList value is : ' + numberList); 

// remove(index) : remove the value at that index

// remove the item at index number 2
numberList.remove(2);
 System.debug('numberList value is : ' + numberList);

//isEmpty() // return false if the size > 0 true if 0
Boolean lstHasNumbers =  numberList.isEmpty() ; 
System.debug('lstHasNumbers value is : ' + lstHasNumbers); 

//Print out FOUND IT if you see 66 inn the list

Boolean has66 = false ; 

for(Integer each : numberList) {
    //System.debug('Current value : ' + each);
    if( each==66 ){
        System.debug('FOUND IT'); 
        has66 = true ; 
        break; 
    }
}
System.debug('has66 value is : ' + has66); 

// numberList value is : (777, 19, 47, 57, 42, 10, 100)
//How to find the index of certain element in the list
//indexOf(valueToBeChecked)
//return the index if found, return is -1 if not found

Integer indexOf42 = numberList.indexOf(42);
System.debug('indexOf22 value is : ' + indexOf42);

//remove 42 from the list
numberList.remove(indexOf42);
System.debug('numberList value is : ' + numberList); 
// numberList value is : (777, 19, 47, 57, 10, 100)

