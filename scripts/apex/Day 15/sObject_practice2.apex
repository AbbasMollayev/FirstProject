// Create an opportunity variable and assign its value
// fill up below fields
// Name, CloseDate, StageName,

Opportunity opp1 = new Opportunity();
opp1.Name = '200 Kindles';
opp1.StageName = 'Closed Won';
opp1.CloseDate = Date.today();

System.debug('opp1 value is : ' + opp1); 

Opportunity opp2 = new Opportunity();
opp2.Name = '150 Books';
opp2.StageName = 'Closed Won';
opp2.CloseDate = Date.today();

System.debug('opp2 value is : ' + opp2); 

//Create a List of Opportunity and add above 2 items
List<Opportunity> opportunities = new List<Opportunity>{opp1,opp2}; 
System.debug('opportunities value is : ' + opportunities); 
insert opportunities;