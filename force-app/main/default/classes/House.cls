// each and every class has constructor 
// if no constructor is explicitly defined 
// compiler will provide 
// empty constructor with no param                <------------
// this is also called default constructor                     |
// if any constructor is defined                               |
// compiler will not provide default constructor               |
public class House {                                         //|
    // Characteristic | attributes of House                    |
    // style, year, hasGarage, squareFootage                   |
   public String style;                                      //|
   public Integer year;                                      //|
   public Boolean hasGarage;                                 //|
   public Integer squareFootage;                             //|
                                                             //|
   public House(){     //---------------------------------------

   }
   
   public House(String style){
        this.style = style;
   }

   public House(String style, Integer year_c, Boolean hasGarage_c, Integer squareFootage_c){
        this.style = style ; 
        this.year = year_c;
        this.hasGarage = hasGarage_c;
        this.squareFootage = squareFootage_c;
    }

    public static void printIt(){
       System.debug('This is House!');
    }
    
}