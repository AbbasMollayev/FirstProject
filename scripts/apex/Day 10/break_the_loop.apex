/**

you can exit any type of loop early
using the keyword break when needed

 */
//Create a List of Integer
 List<Integer> numList = new List<Integer>{7,12,15, 10, 17, 100, 4};
 
 //loop through each and every item, when you find 10 , stop looping

 for(Integer eachNum: numList){
    System.debug(eachNum);
    if (eachNum == 10){
        System.debug('YAY');
        //IN ORDER TO BREAK THE LOOP TO STOP LOOKING
        //use break statement
        break;
    }
 }

 /**
Sometimes we want to skip certain iteration if certain condition is met
when we are inside the loop

continue keyword can be used to skip the iteration
and jump to next iteration

 */
//count from 1-10 and print
//skip 5 while counting
//  for(Integer count=1; count<=10;count++) {
//     if(count !=5){
//    System.debug('count value ' + count);
//     }
//  }

 for(Integer count=1; count<=10;count++) {
    if(count ==5){
    System.debug('Skipping the rest in this iteration');
    continue;
    }
    System.debug('count value ' + count);
 }

 //break
/**
 Imagine you are the teacher and you have 10 kids 

 You are looking for the trouble maker by going through each and every kid , once you found the one, you stop looking at the rest

 */

//continue
 /**
 Imagine you are the teacher and you have 10 kids 

 You are giving treat to all the kids expect the trouble maker by going through each and every kid , you skip the kid that is trouble maker while distributing the treat and continue with the next one. 

 That's what continue keyword does in the loop

 */

 /**
 Create lits of integer with couple items
 iterate over each items and print the number
 skip when you see any number that more than 10
  */

 List<Integer> listOfNum = new List<Integer>{19,1,23,4,6,99};

for( Integer eachNum : listOfNum){
    if(eachNum>10){
      continue;
    }
      System.debug(eachNum);
}