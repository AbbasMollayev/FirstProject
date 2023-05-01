/**
Create a Map of Salesforce  RecordId and sObject Type Account
add few items in it
*/
//  Map <Id,Account> accMap = new  Map <Id,Account> ();
//  accMap.put('001Dn00000L4HGMIA3', new Account(Name = 'Cydeo1'));
//   accMap.put('0018W00002BbgajQAC',  new Account(Name='Cydeo2') ); 
//  accMap.put('0018W00002BbgajQAD',  new Account(Name='Cydeo3') ); 

//  System.debug('accMap value is : ' + accMap); 

/**
Create list of 5 Accounts fill it up
insert this into SF
Create Map<Id, Account> and assign the value
fill up this map with Id of each record in the list as key
                The record itself as value
 */
List<Account> accList = new List<Account>();
accList.add(new Account(Name ='Cydeo1'));
accList.add(new Account(Name ='Cydeo2'));
accList.add(new Account(Name ='Cydeo3'));
accList.add(new Account(Name ='Cydeo4'));
accList.add(new Account(Name ='Cydeo5'));

Database.insert(accList, false)// Or just insert accList;

/**
 Create Map<Id, Account> and assign the value
fill up this map with Id of each record in the list as key
The record itself as value */

// Map<Id,Account> accMap = new Map<Id,Account>(accList);
// System.debug('accMap value is : ' + accMap); 

Map<Id,Account> accMap = new Map<Id,Account>();
// putAll (the record List) ==>> Map<Id, yoursObjectType>
// accMap.putAll(accList);
// System.debug('accMap value is : ' + accMap); 

//Way to do without using putAll and one shot method
for(Account eachAccount : accList) {
  accMap.put(eachAccount.Id, eachAccount);
 }
 System.debug('accMap value is : ' + accMap);