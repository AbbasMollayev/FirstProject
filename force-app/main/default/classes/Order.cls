public class Order {
    public String product;
    public String customer;
    public Decimal price;

    //create a static field tax rate
    public static Decimal taxRate;

    public Order( String product, String customer, Decimal price) {
         this.product = product ;
         this.customer = customer;
         this.price = price;
    }
    public void printOrder(){
        // 'this' keyword represent the current object, calling the method
        System.debug(this);
        //System.debug(this.product + ' for ' + this.customer + ' : cost is ' + this.price); ---> Another message.
    }
    public static void showTaxRate(){
        System.debug('taxRate value is : ' + taxRate);
        
    }

}