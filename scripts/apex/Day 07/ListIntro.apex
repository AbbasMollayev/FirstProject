/**
Collection : for storing more than one values 
There are 3 types of collection 

List : ordered collection to store multiple values of same type 
Set  : unordered collection to store multiple unique values of same type removing
Map  : store key value pair in each element (more on that later)
 */

 // Syntax for Creating a list variable
 // and initializing it's value 

 // List< DataType > nameOfYourVariable 
            // = new List< DataType >(); 

List<String> studentNames = new List<String>();

System.debug(studentNames);
//we can use yourListVariable.add(what you ant to add here);
//to add elements into the List
studentNames.add('Nurzat');
studentNames.add('Ali');
studentNames.add('Esra');

System.debug(studentNames);

/**
Create a List of Integer with some scores
and add 5 ites in it
 */
 List<Integer>scores=new List<Integer>();

 scores.add(100);
 scores.add(200);
 scores.add(300);
 scores.add(400);
 scores.add(500);

 System.debug(scores);

 /**
 Create a List of Decimal called prices
 and initialize it's value
 Add 4 items|elements in it and print it out
  */

  List<Decimal>prices=new List<Decimal>();
 
  prices.add(9.99);
  prices.add(12.99);
  prices.add(15.99);
  prices.add(20.99);
 
  System.debug(prices);

//if we adding something from the beginning use curly braces
//other wise, use parenthesis and item.add
//only one add at a time

  