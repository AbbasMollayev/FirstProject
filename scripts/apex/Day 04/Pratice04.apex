/*
switch on expression {
    when value1 {        // when block 1
        // code block 1
    }    
    when value2 {        // when block 2
        // code block 2
    }
    when value3 {        // when block 3
        // code block 3
    }
    when else {          // default block, optional
        // code block 4
    }
}
*/
 String season = 'winter';
 switch on season{
    when 'spring'{
    System.debug('Go Camping');
    }
    when 'summer'{
        System.debug('Go Swimming');
    }
    when 'fall'{
        System.debug('Go Pick Pumpkin');
    }
    when 'winter'{
        System.debug('Go Skiing');
    }
    when else{
        System.debug('Invalid Season');
    }
}

// Declare a variable called dayCode as Integer
// initialize it's value 

// check 
// if the dayCode value 1, 2, 3, 4, 5 
    // print weekday 
// if it's 6, 7
    // print weekend 
// else 
    // print invalid day code 

Integer dayCode= 4;

if( dayCode== 1||dayCode==2||dayCode==3||dayCode==4||dayCode==5){
    System.debug('weekday');
}else if(dayCode== 6||dayCode==7){
    System.debug('weekend');
}else{
    System.debug('Invalid day code');
}

//Switch on way
switch on dayCode{
    when 1,2,3,4,5{
        System.debug('weekday');
    }
    when 6,7{
        System.debug('weekend');
    }
    when else{
        System.debug('Invalid day');
    }
}

// You can use if statement inside another if statement when needed
// this is called nested if statement 

Boolean primeMember = true ; 
Integer itemPrice = 100 ; 

// if primeMember is true , there is no shipping cost 
// simply print out Your shipping is free
// print total is itemPrice 
// if primeMember is false 
     // itemPrice is greater than 35  ,
            // print your shipping is free 
     // itemPrice is less than 35 , 
            // print out shipping cost is 5$
            // print out total is  itemPrice + 5 

if(primeMember==true){ //we can also directly write if(primeMember)
    System.debug('Your shipping is free');
}else{
    if(itemPrice>=35){
        System.debug('Shipping is free');
    }else{
        System.debug('Shipping cost is 5$ ');
        System.debug('total is: ' + (itemPrice + 5 ));
    }
}
