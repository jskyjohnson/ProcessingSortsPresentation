public abstract class Sort{
  
  BlockList data = null;
  int currentA;
  int currentB;
  boolean sorted;
  
  void update(){
    
  }
  int getA(){
    return currentA;
  }
  int getB(){
    return currentB;
  }
  void nextCommand(){
    
  }
  boolean isSorted(){
    for(int i = 0; i < data.getLength() -1; i++){
      if(data.getBlock(i).getValue() < data.getBlock(i+1).getValue()){
       return false; 
      }
    }
    return true;
  }
}