public class Lion extends Animal{
    public Lion(String name, Integer age, String size ){
        super(name, age, size);
    }

    public override void makeNoise(){
        System.debug(name + ' is roaring'); 
    }

    public void hunt(){
        System.debug(name + ' is hunting'); 
    }
    
    public override String getInfo(String food){
        return name + ' is eating ' + food;
        
    }
}