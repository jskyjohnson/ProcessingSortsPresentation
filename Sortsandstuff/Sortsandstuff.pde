//SETUP SORTS AND STUFF 
//SKY JOHNSON 8/25/15

/*
1. Get Block lists to generate Block objects, then show them on the screen
2. Add animations to sort blocks
3. Add sort objects 
  3.1 Quicksort
  3.2 Mergesort
  3.3 Selectionsort
  3.4 Insertionsort
4. UI AND INTERFACE
5. User Activity (mouse integration)
6. ???
7. Profit
*/

Block k;
BlockList blocklist;
boolean ktemp = true;
boolean quicksortcheck = false;
boolean mergesort =false;
boolean bubblesort = false;
boolean bogosort = false;
Sort sortobject;

void setup(){
  k = new Block();
  blocklist = new BlockList();
  
  size(500,500);
  blocklist.listGenerate(10);
  //blocklist.shuffleblocks();
  
  bubblesort = true;
 //selects Sort
 if(quicksortcheck){
   sortobject = new Quicksort(blocklist);
 }else if(bubblesort){
  sortobject = new BubbleSort(blocklist); 
 }else if(bogosort){
  sortobject = new BogoSort(blocklist); 
 }
}

void update(){
  
  sortobject.update();
  blocklist.update();
}

void draw(){
  clear();
  update();
  background(#AAAAAA);
  blocklist.display();
  
  
}