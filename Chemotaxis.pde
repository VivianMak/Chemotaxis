 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    
 
 /*void setup(){
  size(300,300);
}

void draw(){
  fill(165,142,71);
  stroke(133,92,4);
  strokeWeight(4);
  ellipse(150,150, 150,100);
  line(90,175, 215,175);
}  


  noFill();
  bezier(340, 80, 40, 40, 360, 360, 60, 320);
  stroke(0);
  bezier(120, 80,  320, 20,  320, 300,  120, 300);
  
}
*/

PImage img;
void setup() {
  size(500,500);
  img = loadImage("anglerfish.png");
}

void draw() {
  image(img, 0, 0);
}
