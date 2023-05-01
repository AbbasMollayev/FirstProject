/*
Create a variable called starCount
initialize it to 0
use loop, to print out below
0 star ranger 
1 star ranger 
2 star ranger 
3 star ranger 
4 star ranger 
5 star ranger 
6 star ranger 
*/

 Integer starCount= 0;
 String ranger = ' star ranger';

// do{
//     System.debug((starCount++ )+ ranger);
// }while (starCount<=6);

// //while loop way
// while(starCount<=6){
//     System.debug((starCount++)+ranger);
// }

/*when you are inside the loop, if the starCount is 0
print out, almost there to ranger status*/

while(starCount <=6){
    if(starCount ==0){
        System.debug('Almost there to ranger status');
    }else if(starCount ==6){
        System.debug('You are All star ranger');
    }else{
        System.debug('You are '+starCount+ ranger);
    }
    starCount++;   
}

System.debug('-------------------');

/*
Countdown from 20 -->0, decrease by 2
if the number is greater than 10
print out muffin count is XX
else print out muffin count is XX, i am getting full
*/

Integer muffin= 20;

// while(muffin >= 0){
//     if(muffin > 10){
//         System.debug('Muffin count is '+ muffin);
//     }else if(muffin ==0){
//         System.debug('Muffin count is '+muffin+ ', I am full');
//     }
//     else{
//         System.debug('Muffin count is '+muffin+ ', I am getting full');
//     }
//     muffin-=2;
// }

/**
Declare and initialize variable muffin
Countdown from 20 -> 0 

// if the number is greater than 10 
    // print out first half : muffin count is XX
    // decrease the muffin by 3 
// else 
    // print out second half : muffin count is XX
    // decrease the muffin by 2 
*/
while (muffin >= 0){
if(muffin > 10){
    System.debug('First half: muffin count is: '+ muffin);
    muffin -= 3;
}else{
    System.debug('Second half: muffin count is '+ muffin);
    muffin -= 2;
}
}
