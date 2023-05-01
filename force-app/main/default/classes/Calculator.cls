public class Calculator {
    
    //add
    public static Decimal addNum (Decimal num1, Decimal num2){
        return num1+num2;
    }
    //subtract
    public static Decimal subtractNum (Decimal num1, Decimal num2){
        return num1 - num2;
    }
    //multiply
    public static Decimal multiplyNum (Decimal num1, Decimal num2){
        return num1 * num2;
    }
    //divide
    public static Decimal divideNum (Decimal num1, Decimal num2){
        //in math second number can not be zero
        if(num2 == 0){
            return 0;
        }else{
            return num1/num2;
        } 
    }
}