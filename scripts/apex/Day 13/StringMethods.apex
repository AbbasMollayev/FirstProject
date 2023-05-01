/**
String is DataType to store text
It has a lot of reusable methods that we can use directly
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_System_String_methods
 */

 String message = 'Hello world';

//length() method: return the character count inside the String
System.debug('message.length() value is : ' + message.length()); 

//isEmpty(yourStringHere) method; return true if its not '' or null else false
System.debug('String.isEmpty(message) value is : ' + String.isEmpty(message)); 

String msg1=null;
// isBlank method : Returns true if the specified String is wide space, empty (''), or null; otherwise, returns false.
System.debug('String.isBlank(msg1) value is : ' + String.isBlank(msg1)); 
System.debug(String.isEmpty(msg1));

//toUpperCase()  return the UPPERCASE version of the text
System.debug('message.toUpperCase() value is : ' + message.toUpperCase()); 

//toLowerCase()  return the lowercase version of the text
System.debug('message.ToLowerCase() value is : ' + message.ToLowerCase()); 

String season = 'SUMMER';
switch on season.toLowerCase() {
    when 'spring' {
        System.debug('value Spring match');
    }
    when 'summer' {
        System.debug('value Summer match');
    }
    when 'fall' {
        System.debug('value Fall match');
    }
    when else {
        System.debug('nothing match');
    }
}

// -------------- Checking for String contains some substring
/**
contains(substring) 
Returns true if and only if the String that called the method contains the specified sequence of
characters in substring.

Example :
'abcd' contains 'ab'  true
'abcd' contains 'ac'  false
*/

System.debug('message.contains(\'Hello\')  value is : ' + message.contains('Hello') ); 
System.debug('message.contains(\'hello\')  value is : ' + message.contains('hello') ); 
System.debug('message.contains(\'Jon\')  value is : ' + message.contains('Jon') ); 
 
/**
containsIgnoreCase(substring)
Returns true if the current String contains the specified sequence of characters without regard to case; otherwise, returns false.
 */
System.debug('message.containsIgnoreCase(\'hello\') value is : ' 
                                + message.containsIgnoreCase('hello')); 

/**
containsNone(inputString)
Returns true if the current String doesn't contain any of the characters in the specified
String; otherwise, returns false.
*/
 System.debug('message.containsNone(\'hlo\') value is : ' + message.containsNone('Hlo'));
 System.debug('message.containsNone(\'abc\') value is : ' + message.containsNone('Abc'));


/**
containsOnly(inputString)
Returns true if the current String contains characters only from the specified sequence of characters and not any other characters; otherwise, returns false.
 */
// Hello world is made of these characters  : Helo Wrd 

System.debug('message.containsOnly(\'Helowrd \') value is : ' 
                                    + message.containsOnly('HeloWrd ')); 

System.debug('message.containsOnly(\'He\') value is : ' + message.containsOnly('He')); 

System.debug('message.containsOnly(\'ABC\') value is : ' + message.containsOnly('ABC')); 

String text = 'aaaaoooeee';
// check if this text only contains vowel : a e o u i
System.debug('text.containsOnly(\'aeoui\') value is : ' + text.containsOnly('aeoui')); 

System.debug('-----------Equality--------------'); 
System.debug('is message == Hello World ' +   (message =='Hello World')); // true
System.debug('is message == hello world ' +   (message =='hello world')); // true

//equals(anotherString) method for checking equality in case sensitive manner
System.debug('message.equals(\'Hello world\') value is : ' + message.equals('Hello world')); 

/**
equalsIgnoreCase(secondString)
Returns true if the secondString isn’t null and represents the same sequence 
of characters as the String that called the method, ignoring case. 
This is literally the method version of ==
*/
System.debug('message.equalsIgnoreCase(\'hello world\') value is : ' + message.equalsIgnoreCase('hello world'));

/**
join(iterableObj, separator)
Joins the elements of the specified iterable object, such as a List, 
into a single String separated by the specified separator.
 */
 List<String> strList = new List<String>{'This','is','The','Way','Student'};
String joinedText = String.join(strList, '-' );
System.debug('joinedText value is : ' + joinedText); 

/**
remove(substring)
Removes all occurrences of the specified substring and returns 
the String result. */

String str = 'abcabc';
System.debug('str.remove(\'a\') value is : ' + str.remove('a')); 

String sentence = 'Yana is smart';
String reversedSentence = sentence.reverse();
    String[] reversedWords = reversedSentence.split(' ');
System.debug('reversedSentence value is : ' + reversedSentence); 
System.debug('reversedWords value is : ' + reversedWords); 
String result='';
    for(String each:reversedWords){
        
        result += each.reverse() + ' ';
        
    } 
    System.debug('result value is : ' + result); 
