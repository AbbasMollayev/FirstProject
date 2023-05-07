public class ScheduledTaskCleanUp implements Schedulable{
    public void execute(SchedulableContext context){
        List <Task> overdueTasks = [SELECT Id , Subject, ActivityDate
                                    FROM Task
                                    WHERE ActivityDate < TODAY];
        List <Task> updatedTasks = new List<Task>();
        for(Task each : overdueTasks) {
            each.Status = 'Completed';
            updatedTasks.add(each);
        }
        if(!updatedTasks.isEmpty()){
            update updatedTasks;
        }                             
    }
}