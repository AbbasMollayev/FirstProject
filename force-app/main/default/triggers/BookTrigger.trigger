trigger BookTrigger on Book__c (before insert, after insert,
                                before update, after update,
                                before delete, after delete,
                                after undelete) {

System.debug('Trigger is running for Event : ' + Trigger.operationType); 

//Requirement:
//If the Book Name has changed
//we want to keep the old value in description field for Tracking
//This can be done in BEFORE_UPDATE event

if(Trigger.isBefore && Trigger.isUpdate){
     BookTriggerHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);   
}
// Trigger.new =>  List of Book__c records that entered the trigger
// only available for event of insert, update , undelete 
// Trigger.newMap =>  records that entered the trigger stored in Map<Id, Book__c> 
// only available in after insert,before update,after update, after undelete                             
//    System.debug('-----Trigger.new---List<Book__c>----------');
//    System.debug(Trigger.new) ; 

//    if(Trigger.isAfter && Trigger.isInsert){
                            
//      System.debug('-----Trigger.newMap--Map<Id,Book__c>-----');
//      System.debug(Trigger.newMap) ; 

//      System.debug('-----All The Key of The Map--IDs of All records----');
//      System.debug('Trigger.newMap.keySet()  value is : ' + Trigger.newMap.keySet() );
        
//    }    

// Requirement : When the new book is created or updated 
// if the year is empty ==> set it to 1999
// THIS NEED TO BE WRITTEN IN BEFORE_INSERT OR BEFORE_UPDATE
  if( Trigger.isBefore &&  (Trigger.isInsert ||Trigger.isUpdate )   ){
       BookTriggerHandler.handleBeforeInsertUpdate(Trigger.new);  
     }

  // when the record is restored from recycle bin
  // send an email to logged in user 
  // subject :  XX Book has been restored 
  // Body    :  Make sure this book supposed to be restored 
  if(Trigger.isAfter && Trigger.isUndelete){
      BookTriggerHandler.handleAfterUndelete(Trigger.new);
} 
     // Requirement : When the Name of Book is updated 
     // for now print out the old value of the Book name 
     // BEFORE UPDATE IS PROPER EVENT FOR THIS CASE 
     
     // Trigger.old => store the List of record entered the trigger 
          // however it store the old field values right before the update 
     if(Trigger.isBefore && Trigger.isUpdate){ 
          BookTriggerHandler.handleBeforeUpdate(Trigger.new);
     }
}
