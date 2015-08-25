//SETUP SORTS AND STUFF 
//SKY JOHNSON 8/25/15

Block k;
BlockList blocklist;
void setup(){
  k = new Block();
  blocklist = new BlockList();
  size(500,500);
}
void draw(){
  k.display();
}