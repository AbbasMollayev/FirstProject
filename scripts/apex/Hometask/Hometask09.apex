//Hometask 1:
//  Create a variable contains your full name
//    - print it out in uppercase
//    - print it out in lowercase
//    - find the index of space and print
//    - print first char of first and last name together :initials

String myName = 'Abbas Mollayev';
System.debug('myName.toUpperCase value is : ' + myName.toUpperCase()); 
System.debug('myName.toLowerCase value is : ' + myName.toLowerCase()); 
System.debug('myName.indexOf(\' \') value is : ' + myName.indexOf(' ')); 
System.debug('My initials are: ' + myName.left(1) + myName.right(8).left(1));

//Hometask 2:
// Create a List of 10 String
//    - get the count of String with more than 5 characters
//    - print them out

List<String> strList = new List<String>{'item1','item2','item3','item4','item5'};
strList.add('item6');
strList.add('item7');
strList.add('item8');
strList.add('item9');
strList.add('item10');

Integer count=0;
for(String each:strList){
    if(each.length()>5){
        ++count;
    } 
}
System.debug('count value is : ' + count); 

//Hometask 3:
// Create a List of 10 String
//    - get the count of String even character count
//    - print them out
 List<String> states = new List<String>{'Vermont','New Hampshire','Maine','Virginia','Arizona',
                                        'Nevada','Florida','Tennessee','Maryland','New York'};
 Integer countOfEvenChars = 0;
 for(String each:states) {
    if(Math.mod(each.length(),2)==0){
        ++countOfEvenChars;
    }
 }
 System.debug('countOfEvenChars value is : ' + countOfEvenChars);    

//Hometask 4:
// Write a program that 
//    - create two string variables with values
//    - print 'Its anagram!!!' if they contains same letter in different order AKA anagram
//    - print 'Its not anagram!!'
//    - HINT : use containsOnly method twice on each other

String name = 'listen';
String name2 = 'silent';

if(name.containsOnly(name2) && name2.containsOnly(name)){
    System.debug('Its anagram'); 
}else{
    System.debug('Its not anagram'); 
}

//Hometask 5:
// Create a string variable containing an email address, 
//    - for example jonsnow@nightwatch.com
//    - store the index of the '@' character in the email address.
//    - print out the part before '@' in uppercase
//    - print out whatever is after '@' 
//    - print out last 3 characters

String email = 'berniesanders@vermont.com';
Integer indexOfSign = email.indexOf('@');
System.debug('indexOfSign value is : ' + indexOfSign); 
System.debug('email.right(3) value is : ' + email.right(3)); 
System.debug('value after @ is : ' + email.substringAfter('@').toUpperCase()); 
System.debug('value before @ is: ' + email.substringBefore('@').toLowerCase());

//Hometask 6:
//  Create a String variable with value 
//    - print out the length of the String 
//    - print out the last character index
//    - print out index of second character from the last
//    - split the string by empty String to get List of all characters
//    - loop through each item and get the count of 'a'
//    - now read the doc and try out countMatch method

String beverage = 'coffee';
System.debug('beverage.length() value is : ' + beverage.length()); 
Integer lastIndex = beverage.length()-1;
System.debug('lastIndex value is : ' + lastIndex); 
Integer secondFromTheLastIndex = beverage.length()-2;
System.debug('secondFromTheLastIndex value is : ' + secondFromTheLastIndex); 
List<String> characters = beverage.split('');
Integer countOfa=0;
for(String each : characters) {
    if(each=='a'){
        ++countOfa;
    }
}
System.debug('count value is : ' + countOfa);     
Integer countMethod = beverage.countMatches('a');
System.debug('countMethod value is : ' + countMethod); 

//Hometask 7:
//  Create a String with a long sentence
//    - print out the word count in sentence
//    - loop through each item and reverse it 
//    - outside your loop , print to see the result

String longSentence = 'Reykjavik is the capital of Iceland';
List <String> wordsInSentence = longSentence.split(' ');
Integer countOfWords=0;
Integer index = 0;
for(String each : wordsInSentence) {
    ++countOfWords;
    wordsInSentence.set(index++,each.reverse());
}
System.debug('countOfWords value is : ' + countOfWords);
System.debug('longSentence value is : ' + wordsInSentence); 

//Hometask 8:
// Create a String with a long sentence
//    - split the sentence to get word list 
//    - create a variable called longestCharCount
//    - assign it's value to first item length
//    - loop through each item 
//       - use Math.max(longestCharCount, each.length() )
//    - outside your loop , print to see the result of longestCharCount

String longSentence2 = 'Paris is the capital of France';
List <String> wordsInSentence2 = longSentence2.split(' ');
Integer longestChartCount = wordsInSentence2.get(0).length();
System.debug('longestChartCount value is : ' + longestChartCount); 
for(String each:wordsInSentence2){
    longestChartCount=Math.max(longestChartCount, each.length());
}
System.debug('longestChartCount value is : ' + longestChartCount); 

//Hometask 9:
//  Create a String variable with the value 
//    - check if the value is palindrome or not 
//    - palindrome read the same from forward or backward 
//    - for example anna , hanna , mom
//    - do case-sensitive check!

String family = 'Dad';
Boolean isPalindrome = family.contains(family.reverse());
System.debug('isPalindrome value is : ' + isPalindrome); 

//Hometask 10:
//  Create a List of 5 String values 
//    - create a Boolean variable called isAllPalindrome and set to true
//    - loop through each item in the list 
//       - check if the word is palindrome or not 
//       - if it's not, set isAllPalindrome to false
//       - else take no action (so no else)

List<String> teams = new List<String>{'Liverpool','Arsenal','Borussia Dortmund','Napoli','PSG'};
Boolean isAllPalindrome = true;
for(String each:teams){
    if(!(each==each.reverse())){
        isAllPalindrome=false;
    }
}
System.debug('isAllPalindrome value is : ' + isAllPalindrome); 