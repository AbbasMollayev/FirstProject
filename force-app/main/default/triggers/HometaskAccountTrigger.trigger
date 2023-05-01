// Write an Apex Trigger on Account Object 
trigger AccountTrigger on Account (before insert, after insert,
                                   before update, after update,
                                   before delete, after delete,
                                   after undelete){
//    - Whenever account is created 
//      - automatically fill up account Shipping address using account billing address
//        - ShippingStreet      => BillingStreet
//        - ShippingCity        => BillingCity
//        - ShippingState       => BillingState
//        - ShippingCountry     => BillingCountry
//        - ShippingPostalCode  => BillingPostalCode
if(Trigger.isBefore && Trigger.isInsert){
    for(Account each: Trigger.new){
        each.ShippingStreet = each.BillingStreet;
        each.ShippingCity = each.BillingCity;
        each.ShippingState = each.BillingState;
        each.ShippingCountry = each.BillingCountry;
        each.ShippingPostalCode = each.BillingPostalCode;
    }
}

//    - Whenever account is updated 
//      - Check for the account field SLA__c 
//        - if the value is Gold 
//          - set the CustomerPriority__c value to High
if(Trigger.isBefore && Trigger.isUpdate){
    for(Account each: Trigger.new){
        if(each.SLA__c == 'Gold'){
           each.CustomerPriority__c = 'High';
           
        }
//       - if the value is Silver or Platinum
//          - set the CustomerPriority__c value to Medium
//          - set the SLAExpirationDate__c to 6 months from Today
//        - else 
//          - set CustomerPriority__c value to Low 
         else if(each.SLA__c == 'Silver'||each.SLA__c == 'Platinum'){
            each.CustomerPriority__c = 'Medium';
            each.SLAExpirationDate__c = Date.today().addMonths(6);
        }else{
            each.CustomerPriority__c = 'Low';
        }
    }
}
//      - if SLA__c field has value and SLAExpirationDate__c empty
//        - addError message : 'Service Level Agreement Expiation date is required'
         if(each.SLA__c != null && each.SLAExpirationDate__c == null){
            each.SLAExpirationDate__c.addError('Service Level Agreement Expiration date is required');
          }
//    - Whenever account is deleted
if(Trigger.isBefore && Trigger.isDelete){
//      - Check for the account field SLAExpirationDate__c and Active__c 
//        - if Active__c value is Yes and SLAExpirationDate__c is not in the past 
//        - addError with message 'Can not delete Active Account with SLA not expired'
    for(Account each : Trigger.old){
       if(each.Active__c == 'Yes' && each.SLAExpirationDate__c >= Date.today() ){
          each.addError('Can not delete Active Account with SLA not expired');
       }
    }
}

//    - Whenever account is restored from recycle bin(undeleted)
if(Trigger.isAfter && Trigger.isUndelete){
//        - Create a Task associated with this account with below details 
//        - Task Details 
//          - Subject : Follow up with the Account : NameGoesHere
//          - Description  : Account was restored, follow up on the details 
//          - ActivityDate : Today
//          - Priority     : High
//          - WhatId       : Id of the The Account entered the trigger
   List <Task> newTask = new Task ();
   for(Account each : Trigger.new){
    Task t1 = new Task();
    t1.Subject = 'Follow up with the Account : '+each.Name;
    t1.Description = ' Account was restored, follow up on the details ';
    t1.ActivityDate = Date.today();
    t1.Priority = 'High';
    t1.WhatId = each.Id;
    newTask.add(t);
   }
insert newTask;

}

}