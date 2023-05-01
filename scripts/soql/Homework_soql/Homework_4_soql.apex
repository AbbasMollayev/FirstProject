//## Task 3 Apex SOQL : 
//Get the Id of Account with name Super Parent.

//Account superAcc = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1];
//Id superAccId = superAcc.Id;

Id superAccId = [SELECT Id FROM Account WHERE Name = 'Super Parent' LIMIT 1].Id;

//Get all the Opportunities with no Parent Account association (AccountId is empty)
//and store it in the list called orphanOpps.
List<Opportunity> orphanOpps = [SELECT Name FROM Opportunity WHERE AccountId = NULL];

//Add All the orphanOpps under Account with name Super Parent.
for(Opportunity each : orphanOpps) {
    each.AccountId = superAccId;
}
//perform DML Operation to save it
// update orphanOpps;   


//## Task 5:
//Create a Contact called Super Jon under Account with name Super Parent in UI. 
//Now in Apex
//Get the Id of Contact with name Super Jon.
Id superJonId = [SELECT Id FROM Contact WHERE Name = 'Super Jon' LIMIT 1].Id;
//Get all the Cases with no Contact association (ContactId is empty)
//and store it in the list called orphanCases. 
List <Case> orphanCases = [SELECT CaseNumber FROM Case WHERE ContactId = NULL];
//Add All the orphanCases under Contact with name Super Jon.
for(Case each:orphanCases){
    each.ContactId = superJonId;
}

update orphanCases;


