//Block Class, a more complex version of rect that allows colors and easier transforms.

class Block{
  
  
  float x;
  float y;
  int yscaler;
  float size;
  color k;
  
  Block(){
    x = 50;
    y = 50;
    yscaler = 5;
    size = 50;
    k = #FFFFFF;
  }
  
  Block(float a, float b, float sizec, color a1,int i){
   x = a;
   y = b;
   size = sizec;
   k = a1;
   yscaler = i;
  }
  
  void display(){
    //Color
    stroke(k);
    fill(k);
    //Transform or position
    pushMatrix();
      translate(x,y);
      rect(0,0,size,yscaler);
    popMatrix();
  }
  String toString(){
   return " Yscaler: "+ yscaler; 
  }
  
}