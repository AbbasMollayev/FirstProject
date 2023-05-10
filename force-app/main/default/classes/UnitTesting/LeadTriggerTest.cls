@isTest
private class LeadTriggerTest {

    // @isTest
    // static void testBeforeInsertHappyScenario(){
        
    //     //Arrange 
    //     // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
    //     // List<Lead> allLeads = [SELECT Id,Name from Lead];
    //     // System.debug('allLeads.size() value is : ' + allLeads.size() ); //0 
    //     List<Lead> myLeads = new List<Lead>(); 
    //     myLeads.add( new Lead(FirstName='jon1', LastName='snow1', Company='ABC',LeadSource='Phone')  ); 
    //     myLeads.add( new Lead(FirstName='jon2', LastName='snow2', Company='ABC',LeadSource='Phone')  ); 
    //     myLeads.add( new Lead(FirstName='jon3', LastName='snow3', Company='ABC',LeadSource='Phone')  ); 
    
    //     //Act 
    //     Test.startTest();
    //     insert myLeads ; 
    //     Test.stopTest();
    //     // Assert
    //     // First names ==>> TitleCase
    //     // Last names ==>> UpperCase
    //     // IN ORDER TO SEE THE UPDATES MADE BY TRIGGER , WE NEED SOQL 
    //     List<Lead> allLeads = [SELECT Id,Name from Lead];
    //     System.debug('allLeads.size() value is : ' + allLeads.size() ); //3

    //     // expect first record in the list Name => Jon1 SNOW1
    //     Assert.areEqual('Jon1 SNOW1',   allLeads[0].Name    );
    //     // expect second record in the list Name => Jon2 SNOW2
    //     Assert.areEqual('Jon2 SNOW2',   allLeads[1].Name    );
    //     // expect third record in the list Name => Jon3 SNOW3
    //     Assert.areEqual('Jon3 SNOW3',   allLeads[2].Name    );
    //     //Assert.areEqual(expected,actual);
    // }

    @isTest
    static void testBeforeInsertNoLeadSourceNoFirstName(){
        //Arrange 
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead( LastName='snow1', Company='ABC')  ); 
        myLeads.add( new Lead( LastName='snow2', Company='ABC')  ); 
        myLeads.add( new Lead( LastName='snow3', Company='ABC')  ); 
        //Act
        insert myLeads;
        //Assert
        List<Lead> allLead = [SELECT FirstName, LeadSource FROM Lead WHERE LeadSource = 'Web'];
        Assert.areEqual(3, allLead.size());
        
    }

    @isTest
    static void testBeforeDelete(){
    //Arrange 
        // WE DO NOT HAVE ANY VISIBILITY TO ORG DATA IN THE TEST , WE NEED TO CREATE OUR OWN
        // List<Lead> allLeads = [SELECT Id,Name from Lead];
        // System.debug('allLeads.size() value is : ' + allLeads.size() ); //0 
        List<Lead> myLeads = new List<Lead>(); 
        myLeads.add( new Lead(LastName='snow1', Company='ABC',Status='Working - Contacted')  ); 
        myLeads.add( new Lead(LastName='snow2', Company='ABC',Status='Working - Contacted')  ); 
        myLeads.add( new Lead(LastName='snow3', Company='ABC',Status='Open - Not Contacted')  ); 
    
        //Act 
        insert myLeads ; 
        //delete myLeads ;  // just performing delete DML and it will throw Exception

//since above DML will not work it will just throw Exception and stop execution
//we can either  use try catch block to handle exception and move on OR
//use DML mirror method as below and store the result and get more info from the result
//Database.delete(yourList, allOrNothingOption)return Database.DeleteResult[])
//Database.insert(yourList, allOrNothingOption)return Database.insertResult[])
//Database.update(yourList, allOrNothingOption)return Database.updateResult[])
//Database.undelete(yourList, allOrNothingOption)return Database.UnDeleteResult[])
        Database.DeleteResult[] results = Database.delete(myLeads,false);
        //get the first result out of Array

        //Assert.areEqual(false, results[0].isSuccess());
        Assert.isFalse(   results[0].isSuccess()   );
        Assert.isFalse(   results[1].isSuccess()   );
        Assert.isTrue(    results[2].isSuccess()   );
        
        // first 2 leads are not deleted and error is this :Can not Delete a Lead in Working Status
        // get the error and assert the error message match as expected 
        String expectedErrorMsg = 'Can not Delete a Lead in Working Status'; 
        String actualErrorMsg1 = results[0].getErrors()[0].getMessage(); 
        Assert.areEqual(expectedErrorMsg,actualErrorMsg1);
        
}

@isTest
static void testAfterInsert(){
    //Arrange: Created Test Data

    //Act : Insert Lead(s)
    List<Lead> allLeads = Utils.getLeads('Lead for test', 'Ahmed Inc.', true, 3);
    
    //Expectation: 3 tasks should exists in the system
    //all of them should have Name start with 'Send Apple Air tag to'
    //activityDate supposed to be 2 days from Today
    Date twoDaysFromNow = Date.today()+2;
    List<Task> allTasks = [SELECT Subject, ActivityDate, WhoId FROM Task
                           WHERE Subject LIKE 'Send Apple Air tag to %' AND ActivityDate = :twoDaysFromNow];
    //expect you have exactly 3 tasks:       
    Assert.areEqual(3,allTasks.size());       
     for(Integer i=0; i<3 ;i++) {
    
    Task eachTask = allTasks[i];
    Lead eachLead = allLeads[i];
    // Assert the Task is associated with the lead 
    // by checking task WhoId field is filled up with lead Id
    Assert.areEqual(eachLead.Id, eachTask.WhoId);
    // check the task subject 'Send Apple Ait tag to Mario1,2,3,4,5,...10'
    String expectedSubject = 'Send Apple Air tag to ' + eachLead.LastName.toUpperCase() ;
    Assert.areEqual(expectedSubject, eachTask.Subject );
    // optionally do the same for the date 
 }         
}
@isTest
    static void testBeforeInsertHappyScenarioWithLeadDataCSV_File(){
        
        //Arrange 
        List<sObject> newLeads = Test.loadData(Lead.sObjectType, 'leadData');
    
        //Act 
        //insert myLeads ; ------ WE DON'T NEED THIS, BECAUSE CSV IS ALREADY THERE

        // Assert
        // First names ==>> TitleCase
        // Last names ==>> UpperCase
        // IN ORDER TO SEE THE UPDATES MADE BY TRIGGER , WE NEED SOQL 
        List<Lead> allLeads = [SELECT Id,Name from Lead];
        System.debug('allLeads.size() value is : ' + allLeads.size() ); //3

        // expect first record in the list Name => Jon1 SNOW1
        Assert.areEqual('Jon1 SNOW1',   allLeads[0].Name    );
        // expect second record in the list Name => Jon2 SNOW2
        Assert.areEqual('Jon2 SNOW2',   allLeads[1].Name    );
        // expect third record in the list Name => Jon3 SNOW3
        Assert.areEqual('Jon3 SNOW3',   allLeads[2].Name    );
        //Assert.areEqual(expected,actual);
    }
    @isTest
        static void testBeforeInsertScenario(){
            //Arrange
            List<Lead> testLeads = new List<Lead>{ new Lead(FirstName = 'aBbas', LastName = 'moLLAYev', Company = 'ABC', LeadSource = '')};
            //Act
            Test.startTest();
            insert testLeads;
            Test.stopTest();    

            //Assert      
            List<Lead> expectedResult = new List<Lead> {new Lead(FirstName = 'Abbas', LastName = 'MOLLAYEV',
                                                        Company = 'ABC', LeadSource = 'Web')};

            List<Lead>  actualResult = [SELECT FirstName, LastName,
                                         Company, LeadSource  FROM Lead WHERE LeadSource = 'Web'] ;
                                         

            System.assertEquals(expectedResult[0].FirstName, actualResult[0].FirstName) ;  
            System.assertEquals(expectedResult[0].LastName, actualResult[0].LastName) ;
            System.assertEquals(expectedResult[0].LeadSource, actualResult[0].LeadSource) ;
                                                                    
        }
        
}