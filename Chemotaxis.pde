PImage myPhoto;
PImage bg;

Bacteria [] mob = new Bacteria [5];

void setup()   
 {     
  size (550,550);
  frameRate(25);
  
  bg = loadImage("dirtblock.jpeg");
 
  myPhoto = loadImage ("minecraftpig1.jpeg");
  //myPhoto.resize(50,50);
   
  //create the mob
  for (int i=0; i<mob.length; i++) {
    
    mob [i] = new Bacteria();
    
  }
 }   
 void draw()   
 {    
   
  background (bg);
  image (myPhoto, mouseX, mouseY,50,50);
   
   
   //cursor (myPhoto, 5, 5);
   
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
    
    myX = 275;
    myY = 275;
    
  }
  
 void move () {
   
 if (mouseX>myX)
      myX=myX+(int)(Math.random()*5)-1;
      
    else 
      myX = myX+ (int)(Math.random()*3)-2;
      
    if (mouseY>myY)
      myY=myY+(int)(Math.random()*5)-1;
      
    else 
      myY = myY+ (int)(Math.random()*3)-2;
 
    
    
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
