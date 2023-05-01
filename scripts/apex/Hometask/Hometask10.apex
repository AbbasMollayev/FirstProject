//Hometask 1:
// Create a String variable with a sentence that contains spaces in the beginning and at the end and middle. 
// for example : '  DML   iS reaLly CoOl   '
//    - Remove the space in the beginning and at the end then print 
//          should be => 'DML   iS reaLly CoOl'
//    - normalize the space then print 
//          should be => 'DML iS reaLly CoOl'
//    - check the normalized version of String startsWith 'DML'
//  and print out true | false  (check out the existing method in String class)
// //    - check the normalized version of String endsWithIgnoringCase 'cool'(case insensitive)
//  and print out true | false  (check out the existing method in String class)

String sentence = ' DML   iS reaLly CoOl';
sentence = sentence.trim().normalizeSpace();
System.debug(sentence);
Boolean doesStartWithDML = sentence.startsWith('DML');
Boolean doesItEndWithCool = sentence.endsWithIgnoreCase('cool');
System.debug('doesStartWithDML value is : ' + doesStartWithDML); 
System.debug('doesItEndWithCool value is : ' + doesItEndWithCool); 

//Hometask 2:
// Create a String variable called message that contains a sentence with mixed case. 
// for example : 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase'
//    - split to get List of String containing each words
//    - use for loop to go though each items
//       - make each item TitleCase (lookup capitalize method from String class)
//       - make sure to assign it back to yourList[i] so it actually update your list item
//    - outside your loop , print out to see latest change
//    - join the list items with space 
//       => re-assign back to the String variable message
//       => expect to see 'Apex Made It Easy To Work With Salesforce Database' when printing 

String sentence2 = 'APEX mAde iT Easy to wOrk With SAlesforce DAtabase';
List <String> wordsOfSentence2 = sentence2.split(' ');
for(Integer i=0; i<wordsOfSentence2.size(); i++){
    String TitleCase = wordsOfSentence2.get(i).toLowerCase().capitalize();
    wordsOfSentence2.set(i, TitleCase);
}
System.debug('wordsOfSentence2 value is : ' + wordsOfSentence2); 
String joinedList = String.join(wordsOfSentence2, '-');
System.debug('joinedList value is : ' + joinedList); 

//Hometask 3:
// Create an empty List of Lead
//    - use for loop to go through 10 iteration 
//    - add lead with FirstName, LastName, Company fields filled up as below
     
//    'Test Lead FN 1' ,'Test Lead LN 1' , 'Company 1'
//    'Test Lead FN 2' ,'Test Lead LN 2' , 'Company 2'
//    ....
//    'Test Lead FN 10' ,'Test Lead LN 10' , 'Company 10'
//    insert the list into your org
  
 List <Lead> myLeads = new List <Lead> ();
for(Integer i=1; i<11; i++){
    myLeads.add(new Lead (FirstName ='Test Lead FN '+i, LastName = 'Test Lead LN '+i, Company = 'Company '+i));
}
System.debug('myLeads value is : ' + myLeads); 
// insert myLeads;

//Hometask 4:
//  Create a Lead with required Fields filled up 
//    - insert it into your org 
//    - Create a variable with Task sObject type and assign the value 
//    - fill up the below fields for this task
//       - WhoId with the Id of the lead created above 
//       - Priority 'High'
//       - ActivityDate  Date 7 days from now 

Lead l1 = new Lead (FirstName ='Walt', LastName = 'Disney', Company ='Disney Corp',Status= 'Working-Contacted');
// insert l1;
System.debug('l1 value is : ' + l1); 
ID idOfl1 = l1.Id;

Task leadTask = new Task (WhoId =l1.Id, Priority='High');
leadTask.ActivityDate = Date.today()+7;
// insert leadTask;

//Hometask 5:
// Create List of Opportunity 
//    - Add 10 items in it with valid Opportunity required fields filled up 
//       - Name,  Opp - 1(2,3,4,5..10)
//       - ClosedDate (10 days from Today), 
//       - StageName ='Prospecting', 
//       - Amount  random Integer between 0-100000
//    - insert the list into your org 

//    - Create an Account with Name = 'Parent of Cool Opps'
//    - insert into Salesforce org 

//    - Create an empty List of Opportunity called coolOppsList
//       - Loop through your entire List of 10 items 
//       - If amount is greater than 60000
//          - Update AccountId field to Id of Account you created earlier
//          - Add the Opportunity to coolOppsList

//    - Update the coolOppsList in your org 
//    - Go to user interface and observe you have filled up Account Name field of all opportunities
//  that has amount field over 60000 to 'Parent of Cool Opp'

List <Opportunity> myOpps = new List <Opportunity> ();
for(Integer i=1; i<11; i++){
    myOpps.add(new Opportunity(Name = 'Opp - '+i, CloseDate= Date.today()+10, StageName = 'Prospecting',
                               Amount= Math.round(Math.random()*100000)
    ));
}
System.debug('myOpps value is : ' + myOpps); 
// insert myOpps;

Account a1 = new Account(Name= 'Parent of Cool Opps');
// insert a1;//Now Account has Id field!

List<Opportunity> coolOppsList = new List <Opportunity>();
for(Opportunity each:myOpps){
    if(each.Amount > 60000){
    each.AccountId = a1.Id;
    coolOppsList.add(each);
    }
}
// update coolOppsList;
System.debug('coolOppsList value is : ' + coolOppsList); 

// Hometask 6:
// Create a Date variable with name birthDay and assign the value that represent any date you want.
//    - print out the day portion of the date (check the doc for right method from Date Class)
//    - print out the month portion of the date (check the doc for right method)
//    - print out the year portion of the data (check the doc for right method)
//    - print out the result of checking if the year fall into leapYear (check the doc for right method)
//    - print out the monthsBetween today and birthDay as number representation of how many month as Integer(check the doc)

Date birthDay = Date.newInstance(1776, 07, 04);
System.debug('birthDay.day() value is : ' + birthDay.day()); 
System.debug('birthDay.month() value is : ' + birthDay.month()); 
System.debug('birthDay.year() value is : ' + birthDay.year()); 
Boolean leapYear = Date.isLeapYear(1776);
System.debug('leapYear value is : ' + leapYear); 
Integer monthsBetween = birthDay.monthsBetween(Date.today());
System.debug('monthsBetween value is : ' + monthsBetween); 

// Hometask 7:
// Create an Opportunity variable and assign the value with required fields set 
//    - Name , ClosedDate , StageName
Opportunity opp1 = new Opportunity(Name = '500 microchips', CloseDate = Date.newInstance(2023, 02, 12), StageName = 'Closed Won');
//    - if ClosedDate is over 3 months (use monthsBetween method) and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
if(opp1.CloseDate.monthsBetween(Date.today())>3 && opp1.StageName != 'Closed Won'){
    opp1.StageName = 'Closed Lost';
}
System.debug('opp1 value is : ' + opp1); 
//    - Create a String List called stageNames and 11 stage in Opportunity picklist
List <String> stageNames = new List <String> ();
stageNames.add('Prospecting');
stageNames.add('Qualification');
stageNames.add('Needs Analysis');
stageNames.add('Value Proposition ');
stageNames.add('Id.Decision Makers');
stageNames.add('Perception Analysis');
stageNames.add('Proposal/Price Quote');
stageNames.add('Negotiation/Review');
stageNames.add('Closed Won');
stageNames.add('Closed Lost');
//    - Create a String variable called selectedStageName
//       - assign the value to a random item from above List of 10 item (from index 0-9)
String selectedStageName = stageNames.get(Math.round(Math.random()*9));
//    - Create another Opportunity instance with below fields
//       - Name , ClosedDate , StageName(assign using selectedStageName)
Opportunity newOpp = new Opportunity();
 newOpp.Name = '200 Banana Crates';
 newOpp.CloseDate = Date.newInstance(2020, 11, 15);
 newOpp.StageName= selectedStageName;
 System.debug('newOpp value is : ' + newOpp); 
//    -  if ClosedDate is over 3 months and StageName is not Closed Won 
//       - update the StageName value to Closed Lost 
if( newOpp.CloseDate.monthsBetween(Date.today())>3 && newOpp.StageName != 'Closed Won'){
    newOpp.StageName = 'Closed Lost';
}
System.debug('newOpp value is : ' + newOpp); 

//Hometask 8:
// Create a Contact variable and assign value along with below fields 
//    - LastName, Birthdate
Contact newContact = new Contact (LastName = 'Crow', Birthdate = Date.newInstance(1994, 10, 15));
//    - insert it into Salesforce 
insert newContact;
//    - check if today is the birthday of this Contact according to Birthdate field value
//       - print 'It's your Birthday Today, Tada! '
//       - else print 'It's not your Birthday Today'
//       - Hint : birthday means the date has same month and year as Today's date
if (newContact.Birthdate.day() == Date.today().day() &&
    newContact.Birthdate.month() == Date.today().month()) {
    System.debug('It\'s your Birthday Today, Tada!');  
} else {
    System.debug('It\'s not your Birthday Today'); 
}

//Hometask 9:
// Create a Account with Name value set 
Account acc = new Account (Name = 'Cydeo');
//    - insert it into Salesforce
// insert acc;
//    - Create a Contact with LastName filled up under this Account
Contact con = new Contact(LastName = 'Lesko', AccountId = acc.Id);
//    - insert it into Salesforce
// insert con;
//    - Create Task with below fields set 
Task t1 = new Task();
//       - WhatId = Id of the Account above
t1.WhatId = acc.id;
//       - WhoId  = Id of the Contact above 
t1.WhoId = con.Id;
//       - Subject = 'Follow up with YourContactNameGoesHere' ; 
t1.Subject = 'Follow up with ' + con.LastName;
//       - Description = 'Have a chat with YourContactNameGoesHere from AccountNameGoesHere'
t1.Description = 'Have a chat with '+ con.LastName + ' from '+ acc.Name;
//       - ActivityDate = 7 Days from Today
t1.ActivityDate = Date.today()+7;
//       - Status = 'Pending' ;
t1.Status = 'Pending';

// insert t1;

//Hometask 10:
//  Create an Account variable with name targetAcc and assign value with below fields 
//    - Name, BillingState, BillingCity, BillingCountry, BillingPostalCode
Account targetAcc = new Account ();
targetAcc.Name = 'Ben & Jerry';
targetAcc.BillingState = 'Vermont';
targetAcc.BillingCity = 'Stowe';
targetAcc.BillingCountry = 'USA';
targetAcc.BillingPostalCode = '05672';
//    - insert it into Salesforce
insert targetAcc;
System.debug('targetAcc value is : ' + targetAcc); 
//    - update below fields and reflect the changes in Salesforce
//       - ShippingCountry     has same value as BillingCountry
targetAcc.ShippingCountry = targetAcc.BillingCountry;
//       - ShippingState       has same value as BillingState
targetAcc.ShippingState = targetAcc.BillingState;
//       - ShippingCity        has same value as BillingCity
targetAcc.ShippingCity= targetAcc.BillingCity;
//       - ShippingPostalCode  has same value as BillingPostalCode
targetAcc.ShippingPostalCode = targetAcc.BillingPostalCode;

//save it back to Salesforce
update targetAcc;

// Continue from above task (in different file)
//    - Create 5 placeholder Contact under this Account and fill up as below
//       - LastName : AccountName followed by (1,2,3,4,5)
//       - MailingCountry     has same value as Account BillingCountry
//       - MailingState       has same value as Account BillingState
//       - MailingCity        has same value as Account BillingCity
//       - MailingPostalCode  has same value as Account BillingPostalCode

//    - Steps : 
//       - Create an empty List of Contact with name contactList
List <Contact> contactList = new List <Contact>();
//       - use for loop to iterate over 5 iteration 1-5
//       - Create an Contact variable , assign value as above 
//       - assign the AccountId field to the Id of targetAcc
//       - add it to your contactList
//          - or do in one shot
for(Integer i=1; i<6; i++){
    contactList.add(new Contact(LastName= 'AccountName '+i, MailingCountry = targetAcc.BillingCountry,  MailingState = targetAcc.BillingState
            ,MailingCity = targetAcc.BillingCity, MailingPostalCode = targetAcc.BillingPostalCode, AccountId = targetAcc.Id));
}
//       - outside of your loop
//       - insert contactList
insert contactList;
//          - print out the List, observe Ids generated for Contact
System.debug('targetAcc.Id value is : ' + targetAcc.Id); 
System.debug('contactList value is : ' + contactList); 
//       - verify from your Salesforce org 


