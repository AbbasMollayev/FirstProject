/**
List is a collection type that store element in insertion order
each and every element are stored in a position that start with 0
for example if you have below list
 List<Integer> numLst = new List<Integer>{19,1,23,4,6,99};
 */

 List <Integer> numList = new List<Integer>{19,1,23,7,11,99};

 //get the element at certain index using get method
 //get the first element and store it in a variable

Integer item1= numList.get(0);
System.debug('First item value : ' + item1);

//we can print out directly
System.debug('Second item value : '+ numList.get(1));

System.debug( numList.get(5));

System.debug('---------');
//iterate over all the elements in the loop without for each loop

for(Integer index=0; index<6; index++){
    System.debug( numList.get(index));
}