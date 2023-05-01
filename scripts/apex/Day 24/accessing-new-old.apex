Map<Integer, String> newMap = new Map<Integer, String> {
                                         100=> 'Op1' ,    
                                         200=> 'Op2' ,    
                                         300=> 'Op3'    
                                        };

Map<Integer, String> oldMap = new Map<Integer, String> {
                                         100=> 'Op1-Updated' ,    
                                         200=> 'Op2-Updated' ,
                                         300=> 'Op3-Updated' 
                                        };
//get the new value and old value of item with id of 100 together
System.debug('New value of key 100 value is : ' + newMap.get(100)); 
System.debug('Old value of key 100 value is : ' + oldMap.get(100));