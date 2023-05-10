public class ScheduledCaseCleanUp implements Schedulable{
    public void execute(SchedulableContext context){
        CaseProcessor cp = new CaseProcessor();
        Database.executeBatch(cp, 200);
    }
}