@isTest
private class CreateChildCaseHandlerTest{
    @isTest
    static void testHandleAfterInsert(){
        //Arrange
        List<Case> casesToInsert = CreateChildCaseHandler.createCases(2, 'High');
        //Act
        Test.startTest();
        insert casesToInsert;
        Test.stopTest();
        List<Case> childCases = [SELECT ParentId, Subject, Priority, Parent.CaseNumber  FROM Case WHERE Priority = 'High' AND Subject LIKE 'Child%'];
        //Assert
        for (Case each:childCases){
                String actualResults   = each.Subject;
                String expectedResults = 'Child Case for Case #' + each.Parent.CaseNumber;
                System.assertEquals(expectedResults, actualResults);

                String actualPriority = each.Priority;
                String expectedPriority = 'High';
                System.assertEquals(actualPriority, expectedPriority);
            }
    }
       @isTest
       static void testHandleAfterInsertMedPriority(){
         //Arrange
         List<Case> casesToInsert = CreateChildCaseHandler.createCases(2, 'Medium');
         //Act
         Test.startTest();
         insert casesToInsert;
         Test.stopTest();
         List<Case> childCases = [SELECT ParentId, Subject, Priority  FROM Case WHERE Priority = 'High' AND Subject LIKE 'Child%'];
         //Assert
         Integer actual = childCases.size();//it is 0
         Integer expected = 0;
         System.assertEquals(expected,actual);
    }
    @isTest
    static void testHandleAfterInsertCreationCSV_File(){
        //Arrange
        //Test.loadData allow you to lead the static resource csv file
        //you have uploaded previously and load that into List of sObjects
        List<sObject> newCases = Test.loadData(Case.sObjectType, 'caseData');
        //Act
        // Test.startTest();
        // insert newCases; --------- WE DON'T NEED THOSE BECAUSE FILE IS ALREADY INSERTED
        // Test.stopTest();
        List<Case> childCases = [SELECT ParentId, Subject, Priority, Parent.CaseNumber  FROM Case WHERE Priority = 'High' AND Subject LIKE 'Child%'];
        //Assert
        for (case each:childCases){
                String actualResults   = each.Subject;
                String expectedResults = 'Child Case for Case #' + each.Parent.CaseNumber;
                System.assertEquals(expectedResults, actualResults);

                String actualPriority = each.Priority;
                String expectedPriority = 'High';
                System.assertEquals(actualPriority, expectedPriority);
            }
    }
    // WE SHOULD NOT RELY ON EXISTING DATA IN THE ORG !!!
    // WORKING WITH EXISTING DATA IN THE ORG WILL CAUSE UNEXPECTED POTENTIAL RESULTS 
    // DO NOT USE UNLESS YOU REALLY REALLY CAN NOT REPLICATE THE DATA YOU NEEDED FOR THE TEST 
    @isTest(SeeAllData = true) 
    static void testSeeAllData() {
    // Now we have access to all org data we are connected to
    // lets write a simple query to get all cases
    List<Case> allCases = [SELECT Subject, CaseNumber, Priority FROM Case];

    System.debug('allCases.size() value is : ' + allCases.size() );

  }
}
 
