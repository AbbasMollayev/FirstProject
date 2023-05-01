//Hometask 1:
// Write a program than create List of Double with 10 elements 
//    print out the first value and last value of the list 
//    if first item and last item values are equal 
//    print end with what we started 
//    else print different beginning and ending 
//     HINT : No Loop Needed Here

List <Double> doubleNumbers = new List <Double> {50.7, 85.6, 101.50, 134.34, 87.2, 99.9, 167.78, 230.1, 144.88, 360.55 };

Double valueOfFirstIndex = doubleNumbers.get(0);
Double valueOfLastIndex = doubleNumbers.get(doubleNumbers.size()-1);
System.debug('First value of a list is : ' + valueOfFirstIndex) ;
System.debug('Last value of a list is : '+ valueOfLastIndex);

if(valueOfFirstIndex==valueOfLastIndex){
    System.debug('End with value we started with ');
}else{
    System.debug('Different beginning and end');
}

//Hometask 2:
// Write a program that store List of long with 10 items with positive and negative numbers
//  and print out all positive values using for loop try using the continue instead.

List <Long> longNumbers = new List <Long>{-1000, -975, -567, -386, 160, 230, 440, 980, 1050, 2000 };

for(Integer i = 0; i <= longNumbers.size()-1; i++){
      if(longNumbers.get(i)<0){
        continue;
      } 
      System.debug(longNumbers.get(i));
}
     
//Hometask 3:
//  Write a program that store List of Integer with 10 items 
//  and try to get the sum of values,  break out of the loop if the sum is greater than 100. 

List <Integer> numbers = new List <Integer> {7, 15, 17, 24, 56, 3, 38, 44};
numbers.add(19);
numbers.add(77);

Integer sumOfValues=0;
for(Integer eachNumber:numbers){
    sumOfValues += eachNumber;
    if(sumOfValues>100){
        break;
    }
}

//Hometask 4:
// Write a program that store List of Double with 10 items 
//    break out of the loop if any number is between 50.5 and 99.99 

List <Double> doubleValues = new List <Double> {49.99, 45.6, 33.50, 134.34, 87.2, 99.9, 167.78, 230.1, 144.88, 360.55 };
       
for( Double eachValue : doubleValues ){
     System.debug(eachValue);
    if(eachValue < 99.99|| eachValue > 50.5){
        break;
    }
     System.debug(eachValue);
}

//Hometask 5:
// Write a program that create List of Id with 10 items and use 2 different loop 
// (for loop and for each loop )to print out all value for practice 
//      - continue from above
//      if the any ID match exactly '001xxxxxxxxxxxxxxx' 
//      then break out of the loop

List <Id> usersId = new List <Id> ();

 usersId.add ('0038W00001v1eLpQAI');
 usersId.add ('0038W00001v1eLpWER');
 usersId.add ('0038W00001v1eLpUIT');
 usersId.add ('0038W00001v1eLpXXX');
 usersId.add ('0038W00001v1eLpLOY');
 usersId.add ('0038W00001v1eLpLKK');
 usersId.add ('0038W00001v1eLpQAA');
 usersId.add ('0038W00001v1eLpQYY');
 usersId.add ('0038W00001v1eLpQTT');
 usersId.add ('0038W00001v1eLpQPP');

for(String eachId:usersId){
    System.debug(eachId);
    if(eachId == '0038W00001v1eLpQPP'){
        break;
    }
}

System.debug('----------------');

for(Integer i=0 ; i < usersId.size(); i++ ){
    if(usersId.get(i)=='0038W00001v1eLpLOY'){
        break;
    }
    System.debug(usersId.get(i));
}

System.debug('---------');
//Hometask 6:
//  Write a program that create List of Integer with 10 items 
//    get the count of the items more than 5 (try for loop and for each loop)
//     and print out at the end 

List <Integer> scores = new List <Integer> {1,2,3,4,5,6,7,8,9,10};

Integer count=0;
for(Integer eachScore:scores){
    if(eachScore>5){
        ++count;
    }
}
    System.debug('Count of scores more than 5 : ' + count);

Integer cnt=0;
for(Integer i=0; i<scores.size(); i++){
    if(scores.get(i) > 5){
        ++cnt;
    }
}
System.debug('Count of scores more than 5 : ' + count);

//Hometask 7:
// Write a program that create List of Integer with 10 items 
//     get the count of the items more than 5 and 
//     break out of the loop if you found 2 @

List <Integer> credits = new List <Integer> {1,2,3,4,5,6,7,8,9,10};

Integer howMany=0;
for(Integer i=0; i < credits.size(); i++){
    if( credits.get(i) >5 ){
        ++howMany;
    }else if( credits.get(i)==2){
        break;
    }
}
System.debug(howMany);

//Hometask 8:
// Write a program that create a list of strings 
// print the values that are not equal to "Salesforce"
//  using a for loop and the continue keyword.

List <String> companies = new List <String> ();
companies.add('Amazon');
companies.add('Google');
companies.add('Microsoft');
companies.add('Starbucks');
companies.add('Tim Horton');
companies.add('Turkish Airlines');
companies.add('Salesforce');
companies.add('CYDEO');
companies.add('Shelbourne Farm');
companies.add('Canada Air');

for(Integer i=0; i<companies.size(); i++ ){
    if(companies.get(i) =='Salesforce'){
        continue;
    }
    System.debug(companies.get(i));
}

//Hometask 9:
// Write a program that create a list of strings and print the values that are not equal to "Admin" or "Developer"
//  using a for loop and the continue keyword.

List <String> positions = new List <String> ();
positions.add('Sales specialist');
positions.add('Business Analyst');
positions.add('Cybersecurity');
positions.add('Admin');
positions.add('Developer');
positions.add('Architect');
positions.add('QA Engineer');
positions.add('Project Manager');
positions.add('Junior Developer');
positions.add('HR');

for(Integer i=0 ; i < positions.size(); i++){
    if(positions.get(i) == 'Admin'||positions.get(i) == 'Developer'){
        continue;
    }
    System.debug(positions.get(i));
}

//Hometask 10:
//  Write a program that create a list of strings with 10 values 
//  get the count of the items that are not equal to "Admin" or "Developer" using a for loop and the continue keyword.

List <String> positions02 = new List <String> ();
positions02.add('Sales specialist');
positions02.add('Business Analyst');
positions02.add('Cybersecurity');
positions02.add('Admin');
positions02.add('Developer');
positions02.add('Architect');
positions02.add('QA Engineer');
positions02.add('Project Manager');
positions02.add('Junior Developer');
positions02.add('HR');

Integer countOfPositions=0;
for(Integer i=0 ; i < positions02.size(); i++){
    if(positions02.get(i) == 'Admin'||positions02.get(i) == 'Developer'){
        continue;
    }else{
        countOfPositions++;
    }
}
System.debug('Count of positions is : '+ countOfPositions);


