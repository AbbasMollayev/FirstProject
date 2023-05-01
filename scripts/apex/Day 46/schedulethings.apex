Schedulable scheduled = new ScheduledTaskCleanUp();

//crone expression is used to 
//define time intervals programmatically
String cronExp = '0 1 12 28 4 ?';
System.schedule('Updating overdue Tasks', cronExp, scheduled);