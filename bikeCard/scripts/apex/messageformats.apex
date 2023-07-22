//JSON message format
// {
//     "Name" : "Example",
//     "Type" : "Example"
// }

//XML message format
// <Account>
//     <Name> Example </Name>
//     <Type> Example </Type>
// </Account>

//Get an opp record whose amount is greater than 500k and convert to JSON
Opportunity opp = [SELECT Id, Name, Type, StageName, Amount
                   FROM Opportunity WHERE Amount > 500000 LIMIT 1];

String jsonOpp = JSON.serialize(opp);
System.debug(jsonOpp); 
                   
//Get top 10 opp records based on amount  and convert to JSON
List<Opportunity> topOpps  = [SELECT Id, Name, Type, StageName, Amount
                   FROM Opportunity WHERE Amount != null ORDER BY Amount DESC LIMIT 10];

String jsonTopOpps = JSON.serialize(topOpps);
System.debug(jsonTopOpps);                    