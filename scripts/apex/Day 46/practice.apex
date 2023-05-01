Square s = new Square('Box', 10);
s.calculateArea();
System.debug('s value is : ' + s);


AggregateResult result  =  [SELECT Count(Id) total FROM Account]; 
Integer count = (Integer) result.get('total');
System.debug('count value is : ' + count);
