public with sharing class AddPrimaryContact implements Queueable {
    String state;
    Contact con;
    public AddPrimaryContact(Contact contact, String state){
        this.con = contact;
        this.state = state;
    }
    
    public void execute(QueueableContext qc){
        //get all the Accounts belong to given state
        List<Account> accList = [SELECT Id, BillingState FROM Account WHERE BillingState = :state ];
        
        // add the given contact object to all these Accounts
        List<Contact> toBeInsertedCons = new List<Contact>();

        // go through all the accounts in above Account list 
        // and add the account Id to the cloned contact and add it to the list 
        for(Account each : accList) {
            // clone the contact to get a copy of the provided contact to add
            // and ensure it does not have ID since we are inserting it 
            Contact clonedCon = this.con.clone(); 
            clonedCon.AccountId = each.Id ; 
            toBeInsertedCons.add(clonedCon) ; 

        }
        // Perform DML to insert all contacts 
        if (!toBeInsertedCons.isEmpty()) {
            insert toBeInsertedCons ;     
        }
    }
}