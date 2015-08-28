public class BogoSort extends Sort{
  
  
  BogoSort(BlockList indata){
   this.data = indata;
   this.currentA = 0;
   this.currentB = 0;
   this.nextCommand();
  }
  void update(){
    if(blocklist.swapBlocks(sortobject.getA(),sortobject.getB())){
     sortobject.nextCommand();
    }
  }
  void nextCommand(){
    currentA = (int) random(data.getLength());
    currentB = (int) random(data.getLength());
  }
  
}