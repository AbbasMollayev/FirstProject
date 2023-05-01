Student s1 = new Student('Ilaha', 'Hashimova', 001);
System.debug('s1 value is : ' + s1);

Student s2 = new Student();
System.debug('s2 value is : ' + s2);

House h1 = new House();
System.debug('h1 value is : ' + h1);

House h2 =  new House('Victorian');
System.debug('h2 value is : ' + h2);

House h3 = new House ('Colonial', 1867, true, 7000);
System.debug('h3 value is : ' + h3);

BankAccount b1 = new BankAccount('Zhamilia', 132456321, 13000000);
b1.showDetails();

Student s4 = new Student('Abbas', 'M', 101); 
s4.study() ;   //Abbas Study 
s4.study(5) ;  //Abbas Study 5 hours


List<Student> studentLst = new List<Student>(); 

studentLst.add(  new Student('Abbas', 'M', 101)    ) ; 
studentLst.add(  new Student('Shay', 'A', 102)    ) ; 
studentLst.add(  new Student('Cavidan', 'M', 103)    ) ; 
studentLst.add(  new Student('Gurkan', 'D', 104)    ) ; 
studentLst.add(  new Student('Neslihan', 'K', 105)    ) ; 

System.debug('studentLst value is : ' + studentLst);

// Loop through each item in this List 
// and call the study method on each student 
for(Student each : studentLst){
    each.study();
    each.study(5);
}
