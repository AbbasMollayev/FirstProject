/**
Map is not an Iterable type , so we can not directly iterate over a map
like we did for list and set in for each loop 
however we can get all the keys and iterate over those keys 
if we have the key, we can get the value using get method
that's how we can go through each and every items 
 */

//Create a Map of EmployeeId and PhoneNumber
Map  <Integer, String> empIdPhone = new Map <Integer, String>();
empIdPhone.put(001, '203-541-36985');
empIdPhone.put(002, '204-541-36986');
empIdPhone.put(003, '205-541-36987');
empIdPhone.put(004, '206-541-36988');
empIdPhone.put(005, '207-541-36989');

System.debug('empIdPhone value is : ' + empIdPhone); 

System.debug('empIdPhone.keySet() value is : ' + empIdPhone.keySet()); 

System.debug('empIdPhone.values() value is : ' + empIdPhone.values()); 

for(Integer each:empIdPhone.keySet()){
    System.debug(each +' = ' + empIdPhone.get(each)); 
}

Integer myKey = 003;
 // get the value in the map using myKey as a key
 System.debug('The value of my key is : ' + empIdPhone.get(myKey)); 

//Check if this map contains '207-541-36989' in value
//There is no method in Map to check values with contains method!
List <String> allPhones = empIdPhone.values();
System.debug(allPhones.contains('207-541-36989')); 
//Other way to do
System.debug(empIdPhone.values().contains('207-541-36989')); 