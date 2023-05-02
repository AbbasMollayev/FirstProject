public class OverdueOppProcessor implements Database.Batchable <sObject> {
    public Database.QueryLocator start (Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT Id, StageName FROM Opportunity WHERE CreatedDate = YESTERDAY');
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
          // get the jobId from the bc parameter 
        ID jobId = bc.getJobId() ; 
        AsyncApexJob result = [ SELECT Id, Status, NumberOfErrors,
                                JobItemsProcessed,
                                TotalJobItems
                                FROM AsyncApexJob
                                WHERE Id = :jobID ]; 

        System.debug('result value is : ' + result);
        
        String body = 'The job with Id ' + jobId  
                        + ' Status is ' + result.Status
                        + ' Number of Error is ' + result.NumberOfErrors
                        + ' JobItemsProcessed is ' + result.JobItemsProcessed
                        + ' TotalJobItems is ' + result.TotalJobItems ; 
        
        String subject = 'The job with Id ' + jobId +  ' is ' + result.Status ;

        EmailManager.sendMail(UserInfo.getUserEmail(), subject, body) ; 
        /**
         * SELECT Id, Status, NumberOfErrors,
            JobItemsProcessed,
            TotalJobItems
            FROM AsyncApexJob
            WHERE Id = 
         */
        
    }
}