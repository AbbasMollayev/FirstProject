trigger CreateChildCaseTrigger on Case (after insert) {
    CreateChildCaseHandler.handleAfterInsert(Trigger.new);
}