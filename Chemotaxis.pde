//declare bacteria variables here   
//Bacteria fish;

//array of fishies
Bacteria[] anglerFish = new Bacteria [100];
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
   textSize(20);
   text("Where Are They??", 140, 100);
   img = loadImage("anglerfish.png");
   textSize(10);
   text("click for light", 225, 475);
   // if moused pressed, move and show the bacteria  
   if(light == true){
     
     background(5,23,79);
     textSize(20);
     text("Welcome to the Midnight Zone", 100, 50);
     for(int i = 0 ; i < anglerFish.length; i++){
      anglerFish[i].show(); 
      anglerFish[i].attract(); 
     }
   }
 }  
 
 boolean light = false;
 void mousePressed()
  {
    redraw();
    //fill(252, 252, 3);
    fill(255);
    ellipse(mouseX,mouseY, 100,100);
    light = true;
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
        myX = myX + (int)(Math.random()*2)-2; 
      }
      // if mouse is on the RIGHT, move RIGHT
     if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) <= 150) { 
        myX = myX + (int)(Math.random()*4);
      }
      // if mouse is BELOW, move DOWN
     if (mouseY - myY > 0 && dist(myX, myY, mouseX, mouseY) <= 150) { 
        myY = myY + (int)(Math.random()*4);
      }
      // if mouse is ABOVE, move UP
     if (mouseY - myY <= 0 && dist(myX, myY, mouseX, mouseY) <= 150) { 
        myY = myY + (int)(Math.random()*2)-2;
      }
      
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
