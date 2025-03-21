trigger OpportunityTypeUpdated on Opportunity (before update, after update) {
      if(Trigger.isAfter && Trigger.isUpdate){
          OpportunityHandler.handleAfterUpdate(Trigger.new,Trigger.oldMap);
      }
}