System.debug('Hello');
for (Integer i = 0; i < 100; i++) {
  //check how many SOQL has already been used
  //and when its more then 90 get out of the loop
  if (Limits.getQueries() < 90) {
    List<Account> lst = [SELECT Id FROM Account];
    System.debug('Queries Used' + Limits.getQueries());
  } else {
    System.debug('We are getting closed to the limits!!');
    break;
  }
}