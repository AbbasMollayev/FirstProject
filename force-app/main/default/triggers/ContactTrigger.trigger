/**
Task 1: 
- add all 7 events
- write if statement to run code conditionally if it was before_insert
- write if statement to run code conditionally if it was after_insert
- write if statement to run code conditionally if it was before_update
- write if statement to run code conditionally if it was after_update

Insert and update some records and make these event happen
 */
trigger ContactTrigger on Contact (before insert, after insert, 
                                   before update, after update,
                                   before delete, after delete,
                                   after undelete) {

  System.debug('Trigger.operationType value is : ' + Trigger.operationType); 
  if(Trigger.isBefore && Trigger.isInsert){
    System.debug('Before Insert'); 
  }
  if(Trigger.isAfter && Trigger.isInsert){
    System.debug('After Insert'); 
  }
  if(Trigger.isBefore && Trigger.isUpdate){
    System.debug('Before Update'); 
  }
  if(Trigger.isAfter && Trigger.isUpdate){
    System.debug('After Update'); 
  }


// When the contact is created, if the Level__c field value is Primary
// Create 3 books under this contact
// with Book Name: Book (1, 2, 3) + lastName 

if( Trigger.isAfter && Trigger.isInsert){
  System.debug('Running awesome after insert logic here'); 

  List<Book__c> bookList = new List<Book__c>(); 
  
  for(Contact each : Trigger.new){
    if(each.Level__c == 'Primary'){
    bookList.add(new Book__c(Name = 'Book1 ' + each.LastName , Contact__c = each.Id ));
    bookList.add(new Book__c(Name = 'Book2 ' + each.LastName , Contact__c = each.Id ));
    bookList.add(new Book__c(Name = 'Book3 ' + each.LastName , Contact__c = each.Id ));
    }
  }
  insert bookList;
}

}
