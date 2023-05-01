@isTest
private class AccountControllerTest{
    @isTest
    static void testDifferentUserAccessRecord(){
        //Create a user with standard user profile
        //unique username
        String uniqueUserName = 'Mandalorian' + DateTime.now().getTime() + '@force.com';
        //profile Id
        Profile p = [ SELECT Name, Id FROM PROFILE WHERE Name = 'Standard User' LIMIT 1];
        //all the User Object details that required(will copy from the example)
        User u = new User(
        Alias = 'js',
        Email = 'standarduser@testorg.com',
        EmailEncodingKey = 'UTF-8',
        LastName = 'Testing',
        LanguageLocaleKey = 'en_US',
        LocaleSidKey = 'en_US',
        ProfileId = p.Id,
        TimeZoneSidKey = 'America/Los_Angeles',
        UserName = uniqueUserName
    );
        //Print out currently logged in user name
        System.debug('UserInfo.getName()  value is : ' + UserInfo.getName() );
        List<Account> allAccounts1 = AccountController.getAccountWithAnnualRevenue() ; 
        System.debug('allAccounts1.size()  value is : ' + allAccounts1.size() );

        // Run as newly created user and print out username 
         System.runAs(u){
         System.debug('UserInfo.getName()  value is : ' + UserInfo.getName() );
         List<Account> allAccounts2 = AccountController.getAccountWithAnnualRevenue() ; 
         System.debug('allAccounts2.size()  value is : ' + allAccounts2.size() );
    }
    }
}
