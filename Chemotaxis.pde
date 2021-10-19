Bacteria [] mob = new Bacteria [10];
void setup()   
 {     
  size (500,500);
  frameRate(5);
  
  //create the mob
  for (int i=0; i<mob.length; i++) {
    
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
  int myX, myY; 
  
  Bacteria () {
    
    myX = 250;
    myY = 250;
    
  }
  
 void move () {
   
  myX = (mouseX + 50) + (int)(Math.random()*75)-5;
  myY = (mouseY + 50) + (int)(Math.random()*75)-5;
    
    
  }
  
  void show () {
    
    ellipse (myX,myY,50,50);
    
  }
 }
 

   
   
