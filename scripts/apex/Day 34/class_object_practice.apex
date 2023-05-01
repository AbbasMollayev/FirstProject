BankAccount b1 = new BankAccount();
b1.accountHolder = 'Ali';
b1.accountNumber = 1234567;
b1.balance = 500000;

b1.showDetails();
System.debug(b1.returnBalance());

b1.deposit(-500000);//INVALID AMOUNT!

b1.withdraw(200000);
System.debug(b1.returnBalance());//Balance will be 300000

BankAccount b2 = new BankAccount(); 
b2.setupAccount('Christina',987654321, 1000000); 
b2.showDetails(); 
//Account Holder name: Christina, Number : 987654321, Balance : 1000000
b2.deposit(1000000) ; 

System.debug('b2.getBalance() value is : ' 
            + b2.returnBalance());
b2.deposit(-200);  //INVALID NUMBER!!!!
b2.withdraw(500000) ; 
System.debug('b2.getBalance() value is : ' 
            + b2.returnBalance());
//b2.getBalance() value is : 1500000
b2.withdraw(3000000) ; 
// CAN NOT WITHDRAW THE MONEY YOU DON'T HAVE 

b2.changeName('Cristina 2.0');
b2.showDetails();
