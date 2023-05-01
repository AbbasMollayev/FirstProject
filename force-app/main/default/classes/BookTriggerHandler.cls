public class BookTriggerHandler {
    public static void handleBeforeUpdate(List<Book__c> bookList, Map<Id,Book__c> bookOldMap ){
         for(Book__c each : bookList) {
             Book__c oldBook =  bookOldMap.get(each.Id);
             if(each.Name != oldBook.Name){
                each.Description__c = 'Old value : ' + oldBook.Name;
          }
     }
    }
    public static void handleBeforeInsertUpdate(List<Book__c> bookList){
       for(Book__c each : bookList) {
            if( each.Year__c == null  ){
                each.Year__c = 1999 ; 
            }
       each.Name = each.Name.normalizeSpace();
       List <String> wordList = each.Name.split(' ');
       for(Integer i=0; i<wordList.size() ;i++) {
          wordList[i] = wordList[i].toLowerCase().capitalize();
       }
       each.Name = String.join(wordList, ' ');
       }
    }
    public static void handleAfterUndelete(List<Book__c> bookList){
    // UserInfo class can be used to get information about current logged in user
    // it has many static methods to extract information about user
    // including getting the userId, firstName, lastName ,emails and so on 
    // with method with getXXX format 
    String userEmail = UserInfo.getUserEmail() ; 
    String body = 'Make sure this book supposed to be restored '; 
    for(Book__c each : bookList) {
      String subject = each.Name + ' Book has been restored '; 
      EmailManager.sendMail(userEmail , subject, body);   
    }
    }
    public static void handleBeforeUpdate(List<Book__c> bookList){
        for(Book__c eachOld  : bookList){
             System.debug('eachOld.Name value is : ' + eachOld.Name);
          }
    }

   public static void handleBookOwnerTrigger(List<Book__c> bookList){
     Set<Id> contactIdSet = new Set<Id>();
        for(Book__c each : bookList) {
          if(each.Contact__c !=null ){
             contactIdSet.add(  each.Contact__c   ); 
      }
    }
    List<Contact> contactList = [Select Id,Name, OwnerId FROM Contact
                                WHERE Id IN :contactIdSet ]; 
  
    Map<Id,Contact> parentContactsMap = new Map<Id,Contact>(contactList); 
      for (Book__c each : bookList) {
        if (each.Contact__c != null) {
            each.OwnerId = parentContactsMap.get( each.Contact__c ).OwnerId ; 
      }
    }
    }
}        