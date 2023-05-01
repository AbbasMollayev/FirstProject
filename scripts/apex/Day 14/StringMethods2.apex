// # String methods: 

// ## equals(stringOrId)
// Returns true if the passed-in object is not null and represents the same binary sequence of characters as the current string.
//  Use this method to compare a string to an object that represents a string or an ID.

// ## equalsIgnoreCase(secondString)
// Returns true if the secondString isn’t null and represents the same sequence of characters as the String that called the method, 
// ignoring case.

// ## indexOfIgnoreCase(substring)
// Returns the zero-based index of the first occurrence of the specified substring without regard to case.
//  If the substring does not occur, this method returns -1.



/**## reverse()
Returns a String with all the characters reversed.
 */ 

String message = 'you can do it'; 
System.debug('message value is : ' + message); 
String reversedMessage = message.reverse(); 
System.debug('reversedMessage value is : ' + reversedMessage); 

/** Palindrome : is a word, number, phrase, or other sequence of symbols that reads the same 
backwards as forwards,
such as the word madam, anna, noon, mom, dad, lol, kayak, rotator, hannah
*/
// Write an Apex code to check if a String a palindrome or not
// the logic to solve this is : reverse and compare two strings

String word = 'Aha';
String reverseWord = word.reverse();
if(word==reverseWord){
    System.debug('Palindrome!!!'); 
}else{
    System.debug('Not Palindrome!'); 
}

// ## indexOf(substring)
// Returns the index of the first occurrence of the specified substring. If the substring does not occur, this method returns -1.

String str1 = 'Hello world';
System.debug('str1 value is : ' + str1); 

System.debug('str1.indexOf(\'o\') value is : ' + str1.indexOf('o')); 
System.debug('str1.indexOf(\'wor\') value is : ' + str1.indexOf('wor')); 
System.debug('str1.indexOf(\'worX\') value is : ' + str1.indexOf('worX')); 

/**
## indexOf(substring, index)
Returns the zero-based index of the first occurrence of the specified substring from the point of the given index. If the substring does not occur, this method returns -1.
 */
// //    index    012345678910
//               'Hello world' ; 
System.debug('str1.indexOf(\'o\', 5) value is : ' 
                                + str1.indexOf('o', 5) ); 

System.debug('str1.indexOf(\'o\', 9) value is : ' 
                                + str1.indexOf('o', 9) ); 

/**
##left(length)
Returns the leftmost characters of the current String of the specified length
 */

String str2 = 'abcdefg';
System.debug('str2 value is : ' + str2); 

System.debug('First character value is : ' + str2.left(1)); 
System.debug('First 3 characters value is : ' + str2.left(3)); 

/**
## right(length)
Returns the rightmost characters of the current String of the specified length.
*/
System.debug('last character value is : ' + str2.right(1) ); 
System.debug('last 2 characters value is : ' + str2.right(2) ); 
System.debug('last 3 characters value is : ' + str2.right(3) ); 

// quick task : print out first and last character of the string
System.debug('first and last character : ' 
                   +  str2.left(1)  + str2.right(1) ); 
//quick task : print the second from the last character
//Solution 1:
String secondFromLast = str2.right(2).left(1);
System.debug('secondFromLast value is : ' + secondFromLast); 
//Solution 2:
//find the index of 2nd character from the end
//use mid to start from that index and get 1 character

//index 0 1 2 3 4 5 6
//str2  a b c d e f g 
System.debug('last character index of str2 value is : ' + (str2.length()-1)); 
System.debug('index of second character from the last value is : ' + (str2.length()-2));//<--------------             
//                                                                                                      |
// ## mid(startIndex, length)                                                                           |
// Returns a new String that begins with the character at the specified zero-based startIndex with      |
// the number of characters specified by length.                                                        |
String secondFromLastChar = str2.mid(str2.length()-2, 1);//----------------------------------------------
System.debug('secondFromLastChar value is : ' + secondFromLastChar); 

//Method Chaining
//We can call out method after method as long as method that you call is the same Data Type as of returned value
String str = 'cookie';
System.debug('str value is : ' + str);
String result = str.toUpperCase().left(4).reverse();
System.debug('result value is : ' + result); 

Integer result1=str.length();

// ## split(regExp)
// Returns a list that contains each substring of the String that is terminated by either the regular expression regExp 
// or the end of the String.

String forecast ='VA Weather is beautiful Today';
//split this sentence by space so we can get list of string that contains words

// List <String> wordList = forecast.split('ea');
// System.debug('wordList value is : ' + wordList); 

// List <String> wordList = forecast.split(' ');
// System.debug('wordList value is : ' + wordList); 


List <String> wordList = forecast.split('is');
System.debug('wordList value is : ' + wordList); 

// how many word does this sentence have
System.debug('how many word does this sentence have : ' + wordList.size()); 

for(String each : wordList) {
    System.debug('Current value : ' + each + ' : length is ' + each.length());
}

String name = 'Mario Cruz';
// if you split any String by empty string,
    // you end up with list of each character
List <String> charList = name.split('');
System.debug('charList value is : ' + charList); 

