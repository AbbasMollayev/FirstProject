/*
6. Create a Date variable with name birthDay and assign the value that represent any date you want.
   - print out the day portion of the date (check the doc for right method from Date Class)
   - print out the month portion of the date (check the doc for right method)
   - print out the year portion of the data (check the doc for right method)
   - print out the result of checking if the year fall into leapYear (check the doc for right method)
   - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)
   - print out the daysBetween today and birthDay as number representation of how many days as Integer(check the doc)

   */

   Date birthDay = Date.newInstance(1994, 10, 15);
System.debug('birthDay.day() value is : ' + birthDay.day()); 
System.debug('birthDy.month() value is : ' + birthDay.month()); 
System.debug('birthDay.year() value is : ' + birthDay.year()); 
System.debug('Is year a leap year value is : ' + Date.isLeapYear(birthDay.year())); 

System.debug('months between today and birthday value is : ' + birthDay.monthsBetween(Date.today())); 
System.debug('days between today and birthday : ' + birthDay.daysBetween(date.today())); 



// 10. 7.
//  Create an Opportunity variable and assign the value with required fields set 
//    - Name , ClosedDate , StageName
Opportunity myOpp  = new Opportunity ();
myOpp.Name = '20 Laptops';
myOpp.CloseDate = Date.today()-8;
myOpp.StageName = 'Closed Won'; 
//    - if ClosedDate is over 3 months (use monthsBetween method) and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
if(myOpp.CloseDate.monthsBetween(Date.today())>3 && myOpp.StageName != 'Closed Won'){
    myOpp.StageName = 'Closed Lost';
}
//    - Now let's level up , given below stageNames List containing all stages in Opportunity
      
      List<String> stageNames = new List<String>{
         'Prospecting',
         'Qualification',
         'Needs Analysis',
         'Value Proposition',
         'Id. Decision Makers',
         'Perception Analysis',
         'Proposal/Price Quote',
         'Negotiation/Review',
         'Closed Won',
         'Closed Lost'
      };     

//    - Create a String variable called selectedStageName
//       - assign the value to a random** item from above List of 10 item (from index 0-9)
String selectedStageName = stageNames.get(Math.round(Math.random()*9));
System.debug('selectedStageName value is : ' + selectedStageName); 
//    - Create another Opportunity instance with below fields
//       - Name , ClosedDate , StageName(assign using selectedStageName)
Opportunity newOpp = new Opportunity ();
newOpp.Name = '10 Laptops';
newOpp.CloseDate = Date.today()-60;
newOpp.StageName = selectedStageName;
//    - if ClosedDate is over 3 months and StageName is not Closed Won 
//       - update the StageName value to Closed Lost
if(newOpp.CloseDate.monthsBetween(Date.today())>3 && newOpp.StageName != 'Closed Won'){
    newOpp.StageName = 'Closed Lost';
}


// Create a new Contact object and set its field values
// Insert the new Contact record into the org
//insert newContact;
// Check if today is the contact's birthday
// If today is the contact's birthday, print a message
// 'It's your Birthday Today, Tada!'
// If today is not the contact's birthday, print a different message
//'It's not your Birthday Today'
// Create a new Contact object and set its field values

Contact newContact = new Contact(
    LastName    = 'Cipil',
    FirstName   = 'Fatih',
    BirthDate   = Date.newInstance(1995, 03, 09),
    Email       = 'fatihcipil@gmail.com'
);
// Insert the new Contact record into the org
System.debug('newContact value is : ' + newContact); 
// Check if today is the contact's birthday
if(newContact.Birthdate.month() == Date.today().month() &&
    newContact.Birthdate.day() == Date.today().day()
    ){
        System.debug('It\'s your Birthday Today, Tada! '); 
    } else {
        System.debug('It\'s not your Birthday Today');
    }

// Create a Account with Name value set 
Account acc = new Account (Name = 'Great Account');
//    - insert it into Salesforce
System.debug('acc value is : ' + acc); 
//    - Create a Contact with LastName filled up under this Account
Contact newCon = new Contact (LastName = 'Jones');
//    - insert it into Salesforce
System.debug('newCon value is : ' + newCon); 
//    - Create Task with below fields set 
//       - WhatId = Id of the Account above
//       - WhoId  = Id of the Contact above 
//       - Subject = 'Follow up with YourContactNameGoesHere' ; 
//       - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
//       - ActivityDate = 7 Days from Today
//       - Status = 'Pending' ;/
// Task task1 = new Task ();
//  WhatId = acc.Id;
//    WhoId = newCon.Id;
//    Subject = 'Follow up with' + newCon.LastName ;
//    Description = 'Have a chat with' + newCon.LastName + 'from ' + acc.Name;
//    ActivityDate = Date.today() + 7;
//    Status = 'Pending' ;
// System.debug('task1 value is : ' + task1); 

//  Create an Account variable with name targetAcc and assign value with below fields 
Account targetAcc = new Account ();
//  Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
targetAcc.BillingState = 'Massachusets';
targetAcc.BillingCity = 'Boston';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '02127';
//  insert it into Salesforce
System.debug('targetAcc value is : ' + targetAcc); 
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity = targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode;
System.debug('targetAcc value is : ' + targetAcc); 

// save it back to Salesforce