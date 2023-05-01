public class Pizza {
    public String size;
    public Integer numberOfCheeseTopping;
    public Integer numberOfPepperoniTopping;

    public Pizza(String size, Integer numberOfCheeseTopping, Integer numberOfPepperoniTopping) {
        this.size = size;
        this.numberOfCheeseTopping = numberOfCheeseTopping;
        this.numberOfPepperoniTopping = numberOfPepperoniTopping;   
    }
    public Decimal calculateCost(){
        decimal startingPrice = (size == 'S')? 10 : (size=='M')? 12 : 14;
        decimal totalCost = startingPrice + (numberOfCheeseTopping *2) + (numberOfPepperoniTopping * 1.5);
        return totalCost;
    }

    public void printReceipt(){
        System.debug('Your ' +  size + ' size pizza with '+ numberOfCheeseTopping + ' numberOfCheeseTopping and '
                      + numberOfPepperoniTopping +' numberOfPepperoniTopping costs $'+ calculateCost());
        
    }
    
}