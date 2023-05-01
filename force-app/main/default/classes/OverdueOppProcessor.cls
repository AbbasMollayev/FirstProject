public class OverdueOppProcessor implements Database.Batchable <sObject> {
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, StageName FROM Opportunity WHERE CreatedDate = TODAY');
    }
    public void execute (Database.BatchableContext bc, List<Opportunity> recordsInBatch){
        List<Opportunity> updatedOpps = new List<Opportunity>();
        for(Opportunity each : recordsInBatch) {
            each.StageName = 'Closed Lost';
            updatedOpps.add(each);
        }
        update updatedOpps;
    }
    public void finish(Database.BatchableContext bc){
         System.debug('Done processing Opps');
    }
}