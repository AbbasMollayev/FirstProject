// 1. Disable existing BookTrigger
// 2. Create a Trigger called BookOwnerTrigger
// This trigger listen for two events before insert, before update
trigger BookOwnerTrigger on Book__c(before insert, before update) {
    BookTriggerHandler.handleBookOwnerTrigger(Trigger.new);
  }
