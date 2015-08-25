//SETUP SORTS AND STUFF 
//SKY JOHNSON 8/25/15

Block k;
BlockAnimator blockanimtaor;
void setup(){
  k = new Block();
  blockanimtaor = new BlockAnimator();
  size(500,500);
}
void draw(){
  k.display();
}