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
    stroke(k);
    fill(k);
    rect(x,y,size,size);
  }
}