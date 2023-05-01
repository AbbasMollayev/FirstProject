/**

 */

 Contact c1 = new Contact();
 c1.FirstName = 'Zeynep';
 c1.LastName = 'Yildiz';
 c1.Email = 'zeynep@force.com';

 System.debug('c1 value is : ' + c1); 
// or you can directly provide field value inside ()
// while assigning the value to the variable
 Contact c2 = new Contact(FirstName='Joe',LastName='Frazier');
 System.debug('c2 value is : ' + c2); 

//Create a List of Contact and initialize it's value
List <Contact> contacts = new List <Contact> ();
//store above 2 contact instances into the list
 contacts.add( c1 ); 
 contacts.add( c2 );
 contacts.add(new Contact (FirstName = 'Ali',LastName = 'Ismail'));
 System.debug('contacts value is : ' + contacts); 

System.debug('-------------');
 // Print out the first item in the List (either with list syntax or array)
 System.debug('contacts.get(0)  value is : ' + contacts.get(0) ); 
 System.debug('contacts[0] value is : ' + contacts[0]); 

 //Print out the first item First name in the List (either with list syntax or array)
 System.debug('------------'); 
 String firstContactFistName = contacts[0].FirstName;
 System.debug('firstContactFistName value is : ' + firstContactFistName); 

 