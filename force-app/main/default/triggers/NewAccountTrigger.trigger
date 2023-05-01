trigger NewAccountTrigger on Account ( after update ) {
    // If phone number of Account is updated 
    // update all the related contacts phone number field 

    //1. Create a Set<Id> to store only those Accounts Id
    // that entered the Trigger with phone
    Set <Id> idOfAccounts = new Set <Id> ();
    for(Account each : Trigger.new){
        if(each.phone != trigger.oldMap.get(each.id).Phone){
            idOfAccounts.add(each.Id);
        }
    }
     // If no phone number change for any of the accounts that entered the trigger
     // then the set will be empty, no point of running the rest of the code
     // how do we get out of the trigger early ==> return keyword
     if(idOfAccounts.isEmpty()){
        System.debug('NO ACCOUNT PHONE NUMBERS CHANGED!!'); 
        return; //this will end this trigger execution here and will not proceed to next
     }

    //2. Get all the contacts belong to those Accounts 
    List <Contact> allContacts = [SELECT Name, AccountId, Phone 
                                    FROM Contact
                                    WHERE AccountId IN :idOfAccounts]; 
    //3. Update the contact phone number with Account phone number 
    for(Contact each : allContacts) {
        Account parentAcc = Trigger.newMap.get(each.AccountId);
        each.phone =  parentAcc.phone ; 
    }
    //4. Perform DML to update allContacts 
    update allContacts ; 

}