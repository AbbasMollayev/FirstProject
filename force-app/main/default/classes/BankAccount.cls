public class BankAccount {
    @testVisible
    private String accountHolder;
    @testVisible
    private Integer accountNumber;
    @testVisible  //---------------> Private field is not visible outside of the class. In order to access it for test, we need to use this way.
    private Decimal balance;

    public BankAccount(){
        System.debug('Message from BankAccount constructor with 0 parameters');    
    }
   
    public BankAccount(String accountHolder, Integer accountNumber, Decimal balance){
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.balance = balance;
    }

    
   // create a void method : showDetails
   // accept no parameters
   // print the details of current object
   // Account Holder name XX, Number : YY, Balance: ZZ
   public void showDetails(){
    System.debug('Account Holder name: ' + accountHolder
                            + ', Number : '  + accountNumber
                            + ', Balance : ' + balance  );
   }   
    public Decimal returnBalance(){
    // DO SOME VERY COMPLEX CHECK
    // BEFORE DOING BELOW RETURN IN REAL LIFE
        return this.balance;
    }
    // create a void method called deposit
    // accept 1 Decimal parameter  
    // increase the balance by the number provided
    public void deposit(Decimal newMoney){
        // complex operation goes here
        // avoid negative or 0 value 
        if(newMoney > 0){
            this.balance += newMoney;
        }else{
            System.debug('Invalid Amount');
        }
    }
    public void withdraw(Decimal money){
        if(money <= this.balance){
             this.balance -= money;
        }else{
            System.debug('Can not withdraw Amount bigger than Balance');
        }
    }
    public void setupAccount(String accountHolder, Integer accountNumber, Decimal balance){  
        this.accountHolder = accountHolder;
        this.accountNumber = accountNumber;
        this.balance = balance;
 }
    public void changeName(String newName){
        this.accountHolder = newName;
    }
}