public class CaseProcessor implements Database.Batchable<sObject>, Database.Stateful{
    public Integer totalProcessed = 0;
    
    public Database.QueryLocator start(Database.BatchableContext context){
       
       return Database.getQueryLocator('SELECT Id, Status, isClosed, Subject, CreatedDate, Priority FROM Case  WHERE CreatedDate = LAST_N_DAYS:365');
    }
    
    public void execute(Database.BatchableContext context, List<Case> cases ){
       totalProcessed += cases.size() ;
       List<Case> recordsToDelete = new List<sObject> ();
       List<Case> recordsToUpdate = new List<sObject> ();
       for(Case each:cases){
        if(each.CreatedDate < (Date.today() - 365)){
            recordsToDelete.add(each);
        }else if(each.CreatedDate <(Date.today()-90) && !each.IsClosed ){
            each.Status = 'Closed';
            recordsToUpdate.add(each);
        }
       }
        Database.delete(recordsToDelete,false);
        Database.update(recordsToUpdate,false);
    }
    
    public void finish(Database.BatchableContext context){
        Id jobId = context.getJobId();
        AsyncApexJob asyncJob = [SELECT Id, Status, TotalJobItems, NumberOfErrors, JobItemsProcessed
                                 FROM AsyncApexJob WHERE Id = :jobId];
    String subject = 'The job with Id ' + jobId + ' is ' + asyncJob.Status;
    String body = 'The job with ' + jobId + ' total records processed is ' + totalProcessed;

    EmailManager.sendMail(UserInfo.getUserEmail(), subject, body);
    }

}