/**
Create a List of String that store 5 names
print out the size
print out item number 3
print out item number 1
print out every item using, for loop
 */

List <String> names = new List <String> {'Albert', 'Napoleon', 'Alexander', 'Mehmet'};
names.add('Omar');
names.add('Takumi');
names.add('John');

System.debug('Size of the list is : ' + names.size());
System.debug('Name number 3 is : ' + names.get(2));
System.debug('Name number 1 is : ' + names.get(0));

// for(String eachName:names){
//     System.debug(eachName);
// }

for(Integer index=0; index<names.size(); index++){
    System.debug(names.get(index));
}

