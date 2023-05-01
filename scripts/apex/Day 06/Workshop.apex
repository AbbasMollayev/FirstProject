String browserName='explorer';

switch on browserName{
    when 'safari','opera','chrome','edge','firefox'{
        System.debug(browserName);
    }
    when else{
        System.debug('Invalid browser');
    }
}

if(browserName=='opera'||browserName=='safari'||browserName=='edge'||
browserName=='chrome'||browserName=='firefox'){
    System.debug(browserName);
}else{
     System.debug('Invalid browser');
}

//Second example
String result=(browserName=='safari')? browserName : (browserName=='opera')? browserName :
(browserName=='edge')? browserName : (browserName=='firefox')? browserName : (browserName=='chrome')?
browserName : 'Invalid Browser';

System.debug(result);

String size='grande';

if(size=='venti'){
    System.debug(size+':price is $4.29 \n150 calories');
}else if(size=='tall'){
    System.debug(size+':price is $3.69 \n90 calories');
}else if(size=='grande'){
    System.debug(size+':price is $3.99 \n120 calories');
}else{
    System.debug('Invalid size');
}

String result;
switch on size{
    when 'venti'{
        result=size+':price is $4.29 \n150 calories';
    }
    when 'tall'{
        result=size+':price is $3.69 \n90 calories';
    }
    when 'grande'{
        result=size+':price is $3.99 \n120 calories';
    }
    when else{
        result='Invalid size';
    }
}
System.debug(result);


result= (size=='venti')? size+':price is $4.29 \n150 calories' :
(size=='grande')? size+':price is $3.99 \n120 calories' :
(size=='tall')? size+':price is $3.69 \n90 calories': 'Invalid size';

System.debug(result);

//Third example
//sum of odd numbers between 1-100

Integer sum=0;

for(Integer i=1;i<100;i+=2){
    //sum=sum+i;
    sum+=i;
}

System.debug(sum);

//sum of even numbers between 1-100

Integer sum2=0;

for(Integer i=0;i<100;i+=2){
    sum2+=i;
}
System.debug(sum2);

//Ternary example
Integer day=3;

//output should be Tuesday

String result= (day==1)? 'Sunday' : (day==2)? 'Monday' :
(day==3)? 'Tuesday' : (day==4)? 'Wednesday' : (day==5)? 'Thursday' : 
(day==6)? 'Friday' : 'Saturday';

System.debug(day+'.day of the week is '+result);
