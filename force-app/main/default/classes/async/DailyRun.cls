public class DailyRun implements Schedulable {
    public void execute(SchedulableContext context){
        //create an account every day
        Account a = new Account(Name = 'Acc from Scheduled code');
        insert a ; 
        // optionally send an email 
        EmailManager.sendMail( UserInfo.getUserEmail(),
                              'New Account inserted', 
                              'inserting from scheduled apex') ;
    }
}