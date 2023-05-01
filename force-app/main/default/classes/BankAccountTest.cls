@isTest
private class BankAccountTest {
    @isTest
    static void testGetBalance(){
        //Arrange
        BankAccount b1 = new BankAccount('Sean',123,10000);
        Decimal expected = 10000;
        //Act
        Decimal actual = b1.returnBalance();
        //Assert
        System.assertEquals(expected, actual);
        
        // call the no param constructor and show details method for test coverage 
        BankAccount b2 = new BankAccount(); 
        b2.showDetails(); 
    }
    @isTest
    static void testDeposit(){
        // Arrange
        BankAccount b1 = new BankAccount('Sean',123,10000); 
        //Act
        b1.deposit(1000);
        //Assert
        Decimal expected = 11000;
        Decimal actual = b1.returnBalance();
        System.assertEquals(expected,actual);
        
    }
    @isTest
    static void testWithdraw(){
        //Arrange
        BankAccount b1 = new BankAccount('Sean',123,10000); 
        //Act
        b1.withdraw(5000);
        //Assert
        //aae for the shortcut
        Assert.areEqual(5000,b1.balance);
        
    }
    @isTest
    static void testSetUpAccount(){
        //Arrange
        BankAccount b1 = new BankAccount('Sean',123,10000);
        //Act
        b1.setUpAccount('Test', 456, 4000);
        //Assert
        System.assertEquals('Test',b1.accountHolder);
        System.assertEquals(456,b1.accountNumber);
        System.assertEquals(4000,b1.balance);
        
    }
    @isTest
    static void testChangeName(){                
        // Arrange
        BankAccount b1 = new BankAccount('Sean',123456789,8000000); 
        // Act 
        b1.changeName('Leke') ; 
        // Assert
        Assert.areEqual('Leke',  b1.accountHolder  );
    }
}