OnlineStudent o1 = new OnlineStudent();
o1.firstName = 'Esra';
o1.lastName = 'B' ; 
o1.studentId = 100 ; 
o1.meetingId = 987654321 ; 
System.debug('o1 value is : ' + o1);
o1.study();

LocalStudent l1 = new LocalStudent(); 
l1.firstName = 'Ilaha' ; 
l1.lastName = 'H'; 
l1.studentId = 101 ;
l1.seatId  = 5 ; 
System.debug('l1 value is : ' + l1);
l1.study();  

LocalStudent l2 = new LocalStudent('Jon','Smith',101,7);
System.debug('l2 value is : ' + l2);


OnlineStudent o3 = new OnlineStudent('Akbar','A', 201, 9000874);
System.debug('o3 value is : ' + o3);

 