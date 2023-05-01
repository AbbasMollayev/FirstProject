/**
sObject, Salesforce Object Type as Data type
is the type that represent Salesforce records
every object type you see under Object manager
of setting in your organization
*/

//Creating variable with Account sObject type
//and assign value
Account a1 = new Account();
a1.Name = 'Cydeo';
a1.AnnualRevenue = 100000.0;
a1.BillingCity = 'Vienna';
a1.BillingState = 'VA';
//We can print out everything directly this way:
System.debug('a1 value is : ' + a1); 

//How do we read the value of those fields
//print out Name and BillingState field value
System.debug('a1.BillingState value is : ' + a1.BillingState); 
//change the value of AnnualRevenue to
a1.AnnualRevenue = 1000000000.00;
System.debug('a1.AnnualRevenue value is : ' + a1.AnnualRevenue); 

//here is the shortcut of creating sObject instance
//create 3 Account with these name Apple, Google, Microsoft

Account a2 = new Account (Name = 'Apple');
System.debug('a2 value is : ' + a2); 

//create Google with Name and AnnualRevenue filled up
Account a3 = new Account(Name = 'Google',AnnualRevenue=250000000);
System.debug('a3 value is : ' + a3); 

Account a4 = new Account(Name = 'Microsoft');
System.debug('a4 value is : ' + a4); 

insert a1;
insert a2;
insert a3;
insert a4;