//declare bacteria variables here   
//Bacteria fish;

//array of fishies
Bacteria[] anglerFish = new Bacteria [5];
PImage img;
 
 void setup()   
 {     
   size (500,500);
   background(5,23,79);
   //initialize bacteria variables here
   //fish = new Bacteria(250,250);
   //initialize array of fish
   for(int i = 0 ; i < anglerFish.length; i++){
    anglerFish[i] = new Bacteria(); 
   }
   img = loadImage("anglerfish.png");
 }   
 void draw()   
 {    
   //move and show the bacteria
   background(5,23,79);
   for(int i = 0 ; i < anglerFish.length; i++){
    anglerFish[i].show(); 
    anglerFish[i].attract(); 
   }
 }  
 void mousePressed()
  {
    redraw();
  }
 
 class Bacteria    
 {       
   int mySize, myX, myY;
   
   Bacteria() //constructor
   {
    myX = (int)(Math.random()*250)+10;
    myY = (int)(Math.random()*250)+10;
   }
   
   void show()
   {
     image(img, myX, myY, width/10, height/10);
   }
   
   void attract()
   {
     // if mouse is on the LEFT, move LEFT
     if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= 150) { 
        myX = myX + (int)(Math.random()*2)-4; 
      }
      // if mouse is on the RIGHT, move RIGHT
     if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) <= 150) { 
        myX = myX + (int)(Math.random()*4)+2;
      }
    
      //if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) <= 20) { 
     //  myY = myY + (int)(Math.random()*7)-2; //-2, -1, 0, 1, 2, 3, 4,
      //}
   }

}   
 
  /* 
   void avoid(){
      // if mouse is on the LEFT of the ballooon, RANDOMLY WALK TOWARDS THE RIGHT
      if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= 20) { 
        myX = myX + (int)(Math.random()*6)-2; //-2, -1, 0, 1, 2, 3, 4,
      }
      // if mouse is on the RIGHT of the ballooon, RANDOMLY WALK TOWARDS THE LEFT
      if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) <= 20) { 
        myX = myX + (int)(Math.random()*2)-6; //-6 TO -4
      }
   } 
   */
