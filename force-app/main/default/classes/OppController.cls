public with sharing class OppController {
    @AuraEnabled(cacheable=true)
   public static List<Opportunity> getOppsAmountGreaterThan(Decimal minAmount){
       return [SELECT Id, Name, Amount FROM Opportunity WHERE Amount > :minAmount ];
   }
   
    @AuraEnabled(cacheable=true)
    public static Opportunity getOppWithMaxAmount() {
      Opportunity result = [SELECT Id, Name, StageName, Amount 
                            FROM Opportunity 
                            WHERE Amount != null
                            ORDER BY Amount DESC 
                            LIMIT 1];
       return result;
       
    }
}
