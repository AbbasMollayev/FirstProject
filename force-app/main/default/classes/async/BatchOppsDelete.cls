public class BatchOppsDelete implements Database.Batchable<sObject>, Database.Stateful{
    Integer totalOppsProcessed = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        System.debug('Starting to gather all the records to be processed'); 
        return Database.getQueryLocator([SELECT Name , StageName FROM Opportunity 
                                         WHERE Name = 'Batch Opp']);
    }

     public void execute(Database.BatchableContext bc ,List<Opportunity> recordsInBatch){
         System.debug('Processing ' +recordsInBatch.size() + ' records here'); 
         totalOppsProcessed +=  recordsInBatch.size();
         List<Opportunity> oppsToDelete = new List<Opportunity>();
         for(Opportunity each : recordsInBatch){
             oppsToDelete.add(each);
         }
         Database.delete(oppsToDelete, false);
     }

     public void finish(Database.BatchableContext bc){
        System.debug('Done deleting Opps');
        ID jobId = bc.getJobId() ;
        AsyncApexJob result = [ SELECT Id, Status, NumberOfErrors,
                                JobItemsProcessed,
                                TotalJobItems
                                FROM AsyncApexJob
                                WHERE Id = :jobID ]; 
        System.debug('result value is : ' + result);
        
     }
}