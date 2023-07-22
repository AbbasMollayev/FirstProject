// LeadController.cls
public with sharing class LeadController {
  @AuraEnabled
  public static List<Id> createLeadRecords(List<Lead> leads) {
    List<Database.SaveResult> insertResults = Database.insert(leads, false);
    List<Id> createdLeadIds = new List<Id>();

    for (Database.SaveResult result : insertResults) {
      if (result.isSuccess()) {
        createdLeadIds.add(result.getId());
      }
    }

    return createdLeadIds;
  }
}