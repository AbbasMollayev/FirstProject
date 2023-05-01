public class CreateChildCaseHandler {
    public static Boolean firstRun = true;
    public static void handleAfterInsert(List <Case> newCases){
      if(!firstRun){
         System.debug('You have already ran this code!!');
         return;
      }
      firstRun = false;
      List<Case> childCasesToInsert = new List<Case>();
       for(Case each:newCases){
        if(each.Priority == 'High'){
            Case childCase = new Case( Subject = 'Child Case for Case #' + each.CaseNumber,
                                       ParentId = each.Id,
                                       Priority = 'High'
                                     );    
           childCasesToInsert.add(childCase);                                               
        }
       }
       if(!childCasesToInsert.isEmpty()){
          insert childCasesToInsert;
       }
    }

/**
 * Create a list of case records for testing purposes.
 * @param numCases The number of cases to create
 * @param priority The priority to set for all cases
 * @return A list of case records
*/
public static List<Case> createCases(Integer numCases, String priority) {
     List<Case> newCases = new List<Case>();
     for(Integer i = 1; i<=numCases; i++){
        newCases.add(new Case(Subject = 'Test Case '+i, Priority = priority));
     }
     return newCases;
}
}