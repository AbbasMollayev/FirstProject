/**
Decalre List variable initializr its value
and add all the items in one shot

List<DataType>lastName = new List<DataType> {item1, item2.....};
 */

 List<String> groceries = new List<String>{'Milk','Tea','Bread','Sugar'};
 System.debug(groceries);

// create List of Integer and add 5 values in one shot 
List<Integer> scores = new List<Integer>{20,35,50,65};
scores.add(80);
System.debug(scores);
// create List of Decimal and add 5 values in one shot 
List<Decimal> percentage = new List<Decimal>{15.5, 23.4, 44.4};
percentage.add(48.5);
percentage.add(57.5);
System.debug(percentage);
// create List of Id and  and add 5 values in one shot 
List<Id> accountsId = new List<Id>{'001Dn00000FChTfIAL','001Dn00000FChTcIAL','001Dn00000FChTgIAL'};
System.debug(accountsId);

