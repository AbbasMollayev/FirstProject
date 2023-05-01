Integer num = 13;
//create a variable num2 and assign the value to whatever the value of num1
Integer num2 = num;
System.debug('num2 value is : ' + num2); 

num2 = 200;
System.debug('num value is : ' + num); 
System.debug('num2 value is : ' + num2); 

Case c1 = new Case(Subject = 'My Case');
// insert c1;
System.debug('c1 value is : ' + c1); 
//create a variable c2 and assign the value to the value of c1
Case c2 = c1;
System.debug('c2 value is : ' + c2) ; 
c2.Subject = 'The guy over the wall';
 //print out c1 and c2 subject before update DML
 System.debug('c1.Subject value is : ' + c1.Subject); 
 System.debug('c2.Subject value is : ' + c2.Subject); 

//  update c2;


