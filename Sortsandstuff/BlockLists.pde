//Block list, data structures for blocks!

class BlockList{
 ArrayList<Block> k;
  BlockList(){
    k = new ArrayList<Block>();
  }
  
  
  void display(){  
   
    for(int i = 0; i < k.size(); i++){
     
       k.get(i).display();
     
    }
  }
  
  void listGenerate(){
    int listlength = (int) random(5,100);
    listlength = 10;
    for(int i = 0; i < listlength; i++){
      Block newblock = new Block( .8*((i)*width/listlength) +.8*(width/listlength),(height/2 - ((height/2)/listlength)*i) + height/8 ,width/listlength,#FFFFFF,((height/2)/listlength)*i);
      this.addBlock(newblock);
    }
  
  }
  
  int getlength(){
   return k.size(); 
  }
  
  void shuffleblocks(){
    int shuffleamount = k.size()*10;
    
    for(int i = 0; i < shuffleamount-1; i++){
     int rando = (int) random(k.size());
     int rundo = (int) random(k.size());
      Block temp = k.get(rando);
      k.set(rando, k.get(rundo));
      k.set(rundo, temp);
      
      float tempx = k.get(rando).getX();
      k.get(rando).changeX(k.get(rundo).getX());
      k.get(rundo).changeX(tempx);
      
    }
    
  }
  
  void addBlock(Block temp){
    k.add(temp);
  }
  
  String toString(){
    String returnstring = "";
    for(Block rahulisascrublord : k){
      returnstring += rahulisascrublord.toString();
    }
    return returnstring;
  }
  
}