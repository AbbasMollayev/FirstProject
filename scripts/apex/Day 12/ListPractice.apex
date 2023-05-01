/**
We can create a List by copying the content of another set of list
 */

 List<Integer> numberList = new List<Integer>{35,11,32,17,010};
 System.debug('numberList value is : ' + numberList); 
 //Creating a List by copying everything from another List
 List<Integer> numberList1 = new List<Integer>(numberList); 
 System.debug('numberList1 value is : ' + numberList1); 

 Set<Integer> numberSet = new Set<Integer>{66,62,62,50,059};
 System.debug('numberSet value is : ' + numberSet); 
//Creating a List by copying everything inside a Set
List<Integer>numberList2 = new List<Integer>(numberSet);
System.debug('numberList2 value is : ' + numberList2); 

//if you already have a list created
//and if you want to add all the elements from another list
// for example numberList1 has 5 items, numberList2 has 5 items
// add everything from numberList1 into numberList3 so it can have 10 items

numberList2.addAll(numberList1);
System.debug('numberList2 value is : ' + numberList2); 

// addAll method either accept another list or set, to add all the element
// into this list that calling addAll method

//add all the elements from numberSet into numberList1;
numberList1.addAll(numberSet);
System.debug('numberList1 value is : ' + numberList1); 

