trigger OpportunityTrigger on Opportunity (before insert, after insert,
                                           before update, after update,
                                           before delete, after delete,
                                           after undelete) {

// Requirement :
  // When the opportunity is updated
  // if the stageName has CHANGED to Closed Won
  // Create a new Task with below details
  // Subject : Follow up with renewal
  // ActivityDate : 1 day from Today
  // WhatId   :  opp Id
  if (Trigger.isAfter && Trigger.isUpdate) {
    OpportunityHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap);
  }
//Requirement:
//If the opportunity is in Closed Won Stage
//It should not be deleted
//Throw error message : You can not delete Opp in Closed Won Stage
if(Trigger.isBefore && Trigger.isDelete){
    OpportunityHandler.handleBeforeDelete(Trigger.old);   
}

//Requirement:
//Anytime new Opportunity is created
//if the Amount field is empty
//fill it up with 10000
if(Trigger.isBefore && Trigger.isInsert){
    OpportunityHandler.handleBeforeInsert(Trigger.new);
}
//Requirement:
//Anytime new Opportunity is created
//if the Amount field is greater than 500000
//Create a follow up tasks with below detail
//Task Subject: Follow up with high value op
//Task ActivityDate: 1 day from now
//Task RelatedTo (WhatId) : Your Opportunity (Id)
if(Trigger.isAfter && Trigger.isInsert){
    OpportunityHandler.handleAfterInsert(Trigger.new);
}
if(Trigger.isBefore && Trigger.isUpdate){
    OpportunityHandler.handleBeforeUpdate(Trigger.new);   
}
}
    
