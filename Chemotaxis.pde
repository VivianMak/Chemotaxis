// declare array of fish
Bacteria[] anglerFish = new Bacteria [200];
// declare the angler fish image
PImage img;
// declare colors
int r;
int g;
int b;
 
void setup()   
 {     
   size (500,500);
   background(5,50,79);
   // initialize array of fish
   for(int i = 0 ; i < anglerFish.length; i++){
    anglerFish[i] = new Bacteria(); 
   }
   img = loadImage("anglerfish.png");
 }   

void draw()   
 {
   // title screen sorta
   textSize(25);
   text("Where Are They??", 150, 100);
   textSize(10);
   text("click for light", 225, 475);
   
   // if moused pressed (when theres light), move and show the bacteria  
   if(light == true)
   {
     background(r,g,b); //background to not overlap objects, rgb changes the color
     
     // show  + call function for each fish
     for(int i = 0 ; i < anglerFish.length; i++)
     {
      anglerFish[i].show(); 
      anglerFish[i].attract(); 
     }
     
     // just some text
     textSize(10);
     text("click for light", 225, 470);
     
     //CHANGE BACKGROUND COLOR depending on MOUSEY to simulate the ocean layers
     //background(0,0,50); - hadal zone
     //background(1,24,85); - abyssal zone
     //background(1, 30, 103); - midnight zone
     //background(1, 49, 110); - twilight zone
     //background(13,82,147); - sunlight zone
     
     textSize(20);
     if (mouseY < 75){
       r = 13; g = 82; b = 147;
       text("Welcome to the Sunlight Zone", 100, 50);
       textSize(15);
       text("who needs sunlight when ive got u ;)", 110, 490);
     }
     else if (mouseY < 150){
       r = 1; g = 49; b = 110;
       text("Welcome to the Twilight Zone", 100, 50);
     }
     else if (mouseY < 250){
       r = 1; g = 30; b = 103;
       text("Welcome to the Midnight Zone", 100, 50);
     }
     else if (mouseY < 400){
       r = 1; g = 24; b = 85;
       text("Welcome to the Abyssal Zone", 100, 50);
       textSize(15);
       text("Anglerfishes: yayy we're home", 150, 490);
     }
     else if (mouseY < 500){
       r = 0; g = 0; b = 50;
       text("Welcome to the Hadal Zone", 100, 50);
     }
   }
 }  
 
 // create a boolean for light
 boolean light = false;
 void mousePressed()
  {
    // do i need: redraw();
    fill(255);
    ellipse(mouseX,mouseY, 75,75);
    light = true;
  }


// class object
class Bacteria    
 {       
   int myX, myY; // 2 member variables
   
   Bacteria() //constructor
   {
    myX = (int)(Math.random()*250)+10;
    myY = (int)(Math.random()*250)+10;
   }
   
   // 3 member functions including ^
  void show() // to display image
   {
     image(img, myX, myY, width/10, height/10);
   }
   
  void attract() // literally self explanatory :L
   {
     // if mouse is on the LEFT, move LEFT
     if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= 250) { 
        myX = myX + (int)(Math.random()*2)-3; 
      }
      // if mouse is on the RIGHT, move RIGHT
     if (mouseX - myX > 0 && dist(myX, myY, mouseX, mouseY) <= 250) { 
        myX = myX + (int)(Math.random()*4)+2;
      }
      // if mouse is BELOW, move DOWN
     if (mouseY - myY > 0 && dist(myX, myY, mouseX, mouseY) <= 250) { 
        myY = myY + (int)(Math.random()*4)+2;
      }
      // if mouse is ABOVE, move UP
     if (mouseY - myY <= 0 && dist(myX, myY, mouseX, mouseY) <= 250) { 
        myY = myY + (int)(Math.random()*2)-3;
      }
   }
   
}   
 
