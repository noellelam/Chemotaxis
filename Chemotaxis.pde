PImage photo;

Bacteria [] mob = new Bacteria [1];

void setup()   
 {     
  size (500,500);
  frameRate(5);
  
 
  photo = loadImage ("minecraftpig1.jpeg");
  photo.resize(50,50);
   
  //create the mob
  for (int i=0; i<mob.length; i++) {
    
    mob [i] = new Bacteria();
    
  }
 }   
 void draw()   
 {    
   
   cursor (photo, 5, 5);
   background (20,180,115);
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
   
  myX = (mouseX + 50) + (int)(Math.random()*5)-2;
  myY = (mouseY + 50) + (int)(Math.random()*5)-2;
    
    
  }
  
  void show () {
    
    noStroke();
    
    fill (216,163,83);
    rect (myX,myY,50,50);
    
    fill (105,75,30);
    rect(myX,myY,50,15);
    rect (myX,myY,5,20);
    rect (myX+45,myY,5,20);
  }
 }
