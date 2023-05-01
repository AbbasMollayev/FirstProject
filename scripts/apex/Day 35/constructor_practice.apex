//We access static field by using ClassName.staticFieldName
Order.taxRate = 0.3;
System.debug('Order.taxRate value is : ' + Order.taxRate);

Order o1 = new Order ('Coffee', 'Dua', 1.25);
o1.printOrder();

Order o2 = new Order ('Tea', 'Natalya', 2.25);
o2.printOrder();

Order.taxRate = 0.4;
o1.printOrder();
o2.printOrder();
