Schedulable s1 = new ScheduledCaseCleanUp();
String cronExp = '0 0 0 ? * FRI';
System.schedule('Case Clean Up', cronExp, s1);
