public class BubbleSort extends Sort{
  int test = 0;
  int test2 = 1;
  
  BubbleSort(BlockList indata){
   this.data = indata;
   this.currentA = 0;
   this.currentB = 1;
   this.sorted = false;
  }
  void update(){
    if(checkMove(currentA, currentB)){
     if(data.swapBlocks(test, test2)){
      //nextCommand(); 
     }
    }else{
     //System.out.println("NOT SWITCH:");
    //nextCommand(); 
    }
    //nextCommand();
  }
  void nextCommand(){
    
    
    System.out.println(currentA + " "+ currentB);
    //if((currentB >= data.getLength())){
    // if(this.isSorted()){
      
    //  sorted();
    // }else{
       
    //  currentA=0;
    //  currentB = 1;
     
    // }
    //}
    //currentA++;
    //currentB++;
  }
  boolean checkMove(int a, int b){
    if(data.getBlock(b).getValue() > data.getBlock(a).getValue()){
     return true; 
    }else{
     return false; 
    }
  }
  void sorted(){
    this.sorted = true;
  }
}