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
   public Integer squareFootage;    
   public String location;                         //|
                                                             //|
   public House(){     //---------------------------------------

   }
   
   public House(String architectureStyle){
        this.style = architectureStyle;
        
   }

   public House(String style, String location){
        this.style = style;
        this.location = location;
   }

   public House(String architectureStyle, Integer year_c, Boolean hasGarage_c, Integer squareFootage_c){
        this.style = architectureStyle ; 
        this.year = year_c;
        this.hasGarage = hasGarage_c;
        this.squareFootage = squareFootage_c;
    }

    public static void printIt(){
       System.debug('This is House!');
    }
    
    public void owner(){
       System.debug('No Owner Yet');  
    }

}