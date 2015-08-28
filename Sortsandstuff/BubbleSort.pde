public class BubbleSort extends Sort{
  
  
  BubbleSort(BlockList indata){
   this.data = indata;
   this.currentA = 0;
   this.currentB = 1;
   this.nextCommand();
  }
  void update(){
    
    if(checkMove(currentA, currentB)){
      if(blocklist.swapBlocks(sortobject.getA(),sortobject.getB())){
       nextCommand(); 
      }
    }else{
     nextCommand(); 
    }
    
  }
  void nextCommand(){
    currentA++;
    currentB++;
    
    if(currentB >= data.getLength()){
     if(this.isSorted()){
      System.out.println("PARTY"); 
     }else{
      currentA = 0;
      currentB = 1;
      System.out.println("NOT AS PARTY");
     }
    }
    //System.out.println("WHAT");
  }
  boolean checkMove(int a, int b){
    if(data.getBlock(b).getValue() > data.getBlock(a).getValue()){
     return true; 
    }else{
     return false; 
    }
  }
  
}