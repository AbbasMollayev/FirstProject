//sObject type practice

//create a variable of sObject Case
//and assign the value
//assign couple common fields value
//Subject, Description, Status

Case c1 = new Case();
c1.Subject = 'Apex is not working';
c1.Description = 'Not enough coffee, apex does not work';
c1.Status = 'New';
System.debug('c1 value is : ' + c1); 
System.debug(c1.Id); //before an insert, value will be null, because case does not exist yet

//use DML statement insert to add the record to Salesforce
// insert c1;
// System.debug(c1.Id);//Now id exists because we inserted Case in our SF

//create another case variable and assign its value and Subject value in one shot
Case c2 = new Case(Subject='In one shot Case Subject');
System.debug('c2 value is : ' + c2); 

Case c3 = new Case(Subject='apex subject', Priority='High');

//create a List of Case and add above 3 cases
 List <Case> caseCollection = new List <Case> {c1,c2,c3};
 //add one more item to the list with subject of Apex Subject2
 caseCollection.add(new Case(Subject='Apex Subject2'));
 
//insert this list of Case into Salesforce using insert
//  insert caseCollection;