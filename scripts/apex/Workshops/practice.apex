House h1 = new House ( );
House h2 = new House('Victorian');
House h3 = new House ('Arabesque', 'Pittsburgh');
House h4 = new House ('Gothic', 1846 , true ,100);

System.debug('h1 value is : ' + h1);
System.debug('h2 value is : ' + h2);
System.debug('h3 value is : ' + h3);
System.debug('h4 value is : ' + h4);

House.printIt();

h2.owner();

System.debug(Calculator.addNum(10.5, 15.7));

