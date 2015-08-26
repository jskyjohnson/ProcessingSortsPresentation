//Block Class, a more complex version of rect that allows colors and easier transforms.

class Block{
  
  
  float x;
  float y;
  int yscaler;
  float size;
  color k;
  float speed;
  boolean canMove;
  boolean delay;
  float moveTo;
  float moveDelay;
  Block(){
    x = 50;
    y = 50;
    yscaler = 5;
    size = 50;
    k = #FFFFFF;
  }
  
  Block(float a, float b, float sizec, color a1,int i){
   x = a;
   canMove = true;
   y = b;
   size = sizec;
   k = a1;
   yscaler = i;
   speed = 10;
   moveTo = 0;
   moveDelay = 30;
   delay = false;
  }
  void changeX(float x2){
   this.x = x2; 
  }
  float getValue(){
   return yscaler; 
  }
  float getX(){
   return this.x; 
  }
  void moveTo(float a){
    canMove = false;
    moveTo = a;
  }
  boolean canMove(){
    if(canMove && !delay){
     return true; 
    }
    return false;
  }
  void update(){
    if(!canMove && !delay){
     if((int) this.x > (int)moveTo){
      this.x-= speed;
    }else if((int) this.x < (int) moveTo){
      this.x+= speed;
    }else{
      delay = true;
    } 
    }
    if(delay){
      moveDelay-=1;
      if(moveDelay < 0){
       delay = false;
       canMove = true;
       moveDelay = 30;
      }
    }
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