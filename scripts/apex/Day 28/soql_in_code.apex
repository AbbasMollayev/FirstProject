//Get an Account Record(Name, AnnualRevenue, Rating) and Store it into Account variable

//Apex and SOQL Work seamlessly together
//We can use SOQL to get data and store it into
//Only the fields that are in SELECT line of query are available in the list

Account a1 = [SELECT Name, AnnualRevenue, Rating, Phone FROM Account LIMIT 1];
System.debug('a1 value is : ' + a1); 

// Get All the account record with Rating filed not null
  // include, Id, Name, Rating, AnnualRevenue
  // Store it into List<Account>
List <Account> accList = [SELECT Id, Name, Rating, AnnualRevenue FROM Account WHERE Rating != NULL];
System.debug('accList.size() value is : ' + accList.size()); 

//Print out the Name, Rating in the loop
for(Account each : accList) {
    System.debug('Name value : ' + each.Name + ' Rating value : ' + each.Rating) ;
}

// Get All the Lead Name, Status if the status is Working - Contacted
    // Store it into the list and loop through each item
    // print the name and status
    List<Lead> leadLst = [SELECT Name, Status FROM LEAD
                      WHERE Status = 'Working - Contacted' ] ; 

for(Lead each : leadLst) {
    System.debug(each.Name + ' | ' + each.Status  );
}