PImage photo;

Bacteria [] mob = new Bacteria [10];

void setup()   
 {     
  size (500,500);
  frameRate(10);
  
 
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
   
  myX = (mouseX + 50) + (int)(Math.random()*50)-2;
  myY = (mouseY + 50) + (int)(Math.random()*50)-2;
    
    
  }
  
  void show () {
    
    noStroke();
    
    //head
    fill (216,163,83);
    rect (myX,myY,50,50);
    
    fill (105,75,30);
    //hair
    rect(myX,myY,50,20);
    rect (myX,myY,5,25);
    rect (myX+45,myY,5,25);
    
    //mouth
    rect (myX+10, myY+40, 30,10);
    
    
    fill (170,110,86);
    rect (myX+20,myY+40,10,5);
    
    //nose
    fill (116,71,54);
    rect (myX+20,myY+35,10,5);
    
    //white eye
    fill (255,255,255);
    rect (myX+5, myY+30, 15,5);
    rect (myX+30,myY+30,15,5);
    
    //blue eye
    fill (0,0,255);
    rect (myX+10,myY+30, 10,5);
    rect (myX+30,myY+30,10,5);
  }
 }
