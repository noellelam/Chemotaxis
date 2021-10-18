Bacteria [] mob = new Bacteria [20];
void setup()   
 {     
  size (500,500);
  frameRate (10);
  
  //create the mob
  (for int i=0; i<mob.length; i++) {
    
    mob [i] = new Bacteria();
    
  }
 }   
 void draw()   
 {    
   background (0);
   //moves and shows the mob
   for (int i=0; i<mob.length; i++) {
     
     mob[i].move();
     mob[i].show();
     
   }
 }  
 class Bacteria    
 {     
   //lots of java!   
 }   
