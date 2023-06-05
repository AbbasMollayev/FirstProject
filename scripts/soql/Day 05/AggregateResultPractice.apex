
AggregateResult result = [SELECT Count(ID) CountOfAccounts, MAX(AnnualRevenue) MaximumAnnualRevenue FROM Account];
System.debug('result value is : ' + result); 
//get the count value out of AggregateResult
//we have get method that accept the column name and return the value
System.debug('Count of Account is : ' + result.get('CountOfAccounts')); 
System.debug('Maximum Annual Revenue value is : ' + result.get('MaximumAnnualRevenue')); 

System.debug('----------------'); 
//SELECT Count of Opps and Min Opps amount from All opportunities
// Store the result into a variable and print it out
// give alias to your aggregate function as CountOfOpp , LowestAmount

AggregateResult oppResult   = [SELECT COUNT(Id) CountOfOpp, MIN(Amount) LowestAmount FROM Opportunity];
System.debug('Count of Opps is : ' + oppResult.get('CountOfOpp')); 
System.debug('Minimum Amount is : ' + oppResult.get('LowestAmount')); 

//If the SOQL Query return single row, we can store it into one AggregateResult variable
//When we have multiple rows as a result of GROUP BY
//Then we will get one AggregateResult for every row
//and we can store it in a List or Array
// List<AggregateResult> or just AggregateResult[]

AggregateResult[] allResults = [SELECT StageName, COUNT(Id) CountOfOpps FROM Opportunity GROUP BY StageName];

for(AggregateResult each : allResults) {
    //System.debug('Current value : ' + each);
    //Print in this Format StageName CountOfOppStatus
    System.debug(each.get('StageName') + '----->'+'CountOfOppStatus');  
}

// TASK :  Store the result of below query and print each item out 
/**
// SELECT isClosed, COUNT(Id)
// FROM Opportunity
// GROUP BY IsClosed
 */
AggregateResult[] resultForOpps = [SELECT isClosed, COUNT(Id) CountOfOpps FROM Opportunity GROUP BY IsClosed];
for(AggregateResult each : resultForOpps){
    System.debug(each.get('isClosed') +' : '+ each.get('CountOfOpps')); 
}

AggregateResult oppResult = [
  SELECT
    COUNT(Id) CountOfOpps,
    MIN(Amount) LowestAmount,
    MAX(CreatedDate) LastOppCreatedDate
  FROM OPPORTUNITY
];

System.debug('Count of Opps is ' + oppResult.get('CountOfOpps'));
System.debug('MIN(Amount) is ' + oppResult.get('LowestAmount'));

Integer count       = (Integer) oppResult.get('CountOfOpps');
Decimal amount      = (Decimal) oppResult.get('LowestAmount');
DateTime latestDate = (DateTime) oppResult.get('LastOppCreatedDate');

System.debug('count value is : ' + count);
System.debug('amount value is : ' + amount);
System.debug('latestDate value is : ' + latestDate);