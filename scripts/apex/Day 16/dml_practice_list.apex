/**
DML Practice

Create List of Account
add 5 items with below Name
Apex Acc 1
Apex Acc 2
Apex Acc 3
Apex Acc 4
Apex Acc 5

insert this list

update the annual revenue field with
 random number between 0, 10000

 Let this update reflect in salesforce
 update using the list in one shot

 optionally delete them all
 */

 List <Account> accountCollection = new List <Account> ();

//  for(Integer i=1; i<6; i++){
//     Account a = new Account ();
//     a.Name = 'Apex Account ' + i;
//     //add that to the list
//     accountCollection.add(a);
//  }
// System.debug('accountCollection value is : ' + accountCollection); 

//In one shot
 for(Integer i=1; i<6; i++){
    accountCollection.add(new Account (Name = 'Apex Account ' + i));
 }
 insert accountCollection;
  System.debug('accountCollection value is : ' + accountCollection); 

//update the annual revenue field with
//random number between 0, 100000

for(Account each:accountCollection){

    each.AnnualRevenue = Math.round(Math.random()*100000); 
}
System.debug('accountCollection value after update is : ' + accountCollection);  
//update it in SF org using update dml statement
update accountCollection;

//Create a new List of Account called vipAccounts
//loop through each item in your accList
//if the annual revenue is greater than 50000
//update Description field to IMPORTANT ACCOUNT
//add this account to vipAccounts List
List<Account>vipAccounts= new List<Account>();
for(Account each:accountCollection){
    if(each.AnnualRevenue > 50000){
        each.Description='Important Account';
        vipAccounts.add( each);
    }
}
System.debug('vipAccounts value is : ' + vipAccounts); 

//eventually update vipAccounts to reflect this change
update vipAccounts;

//delete them all
delete accountCollection;

// Clean up all the Opportunity Records created Today

delete [SELECT Id from Opportunity Where CreatedDate = TODAY];