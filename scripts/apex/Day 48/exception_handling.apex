//Exception handling

System.debug('My code started');

String s;
try {
    System.debug('inside try block'); 
    System.debug( s.toUpperCase() ); 
    System.debug('end of try block');

} catch (NullPointerException e) {
    //getMessage method of Exception class can be used to get more details about the exception
    System.debug('e.getMessage() value is : ' + e.getMessage());
    System.debug('inside catch block');
    System.debug('ERROR OCCURRED!!!!');  
}
System.debug('My code Finished'); 

