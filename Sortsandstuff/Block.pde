//Block Class, a more complex version of rect that allows colors and easier transforms.

class Block{
  
  
  float x;
  float y;
  float size;
  color k;
  
  Block(){
    x = 50;
    y = 50;
    size = 50;
    k = #FFFFFF;
  }
  
  Block(float a, float b, float sizec, color a1){
   x = a;
   y = b;
   size = sizec;
   k = a1;
  }
  
  void display(){
    //Color
    stroke(k);
    fill(k);
    //Transform or position
    pushMatrix();
      translate(x,y);
      
      rect(0,0,size,size);
    popMatrix();
  }
  
}