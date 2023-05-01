// Lead l1 = Utils.getLead('Snow', 'Night LLC', true);
// System.debug('l1 value is : ' + l1);

// Lead l2 = Utils.getLead('Stark','Stark Industry', false) ; 
// System.debug('l2 value is : ' + l2);    

// List<Lead> myLeads1 = Utils.getLeads('Lannister', 'Westro', true, 4) ; 
// System.debug('myLeads1 value is : ' + myLeads1);

// List<Lead> myLeads2 = Utils.getLeads('Smith', 'IMB', false, 2) ; 
// System.debug('myLeads2 value is : ' + myLeads2);

// LeadTriggerHandler.handlerBeforeInsert( myLeads2 );
// System.debug('myLeads2 value is : ' + myLeads2);

// Create a list of lead with FirstName, lastName, Company with 2 elements 
// call the method above to see your result 
List<Lead> myLeads3 = new List<Lead>(); 
myLeads3.add( new Lead(FirstName='clark', LastName='Kent',Company='Justice League' )); 
myLeads3.add( new Lead(FirstName='bruce', LastName='Wayne',Company='Wayne Enterprise' )); 
myLeads3.add( new Lead(FirstName='diana', LastName='Prince',Company='Amazon' )); 

// System.debug('myLeads3 value is : ' + myLeads3);
// LeadTriggerHandler.handleBeforeInsert(myLeads3) ; 
// System.debug('myLeads3 value after the call is : ' + myLeads3);

Lead l = new Lead(FirstName = 'Handler', LastName = 'Class', Company = 'Akbar LLC');
