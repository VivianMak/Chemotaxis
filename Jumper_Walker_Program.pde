//nopointerexception - access smth that doesnt exist

class Jumper
{
 int myX, myY;
 Jumper()
 {
  myX = 250;
  myY = 250;
 }
 void jump(){
  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500); 
 }
 void show()
 {
   ellipse(myX, myY, 50, 50);
 }
}

class Walker
{
 int myX, myY;
 Walker()
 {
  myX = 175;
  myY = 250;
 }
 void walk(){
  myX = myX + (int)(Math.random()*10)-4;
  myY = myY + (int)(Math.random()*10)-4; 
 }
 void show()
 {
   ellipse(myX, myY, 50, 50);
 }
}

Jumper bob;
Walker fred;
Walker [] betterOldPplHome = new Walker [10]; //array

void setup()
{
 size(500,500);
 frameRate(20);
 background(0);
 
 bob = new Jumper();
 fred = new Walker();
 
 for(int i = 0;  i < betterOldPplHome.length; i++){
    betterOldPplHome[i] = new Walker(); //elements of array
  }
}

Walker [] oldpplhome = {
  new Walker(),
  new Walker(),
  new Walker(),
  new Walker(),
  new Walker(),
};

/*
Walker [] betterOldPplHome = new Walker [10]; //array
for(int i = 0;  i < betterOldPplHome.length; i++)[
betterOldPplHome[i] = new Walker(); //elements of array
}
*/

void draw()
{
  background(0);
  //fill(150);
  bob.jump();
  bob.show();
  
  for(int i = 0;  i < betterOldPplHome.length; i++){
    betterOldPplHome[i].walk();
    betterOldPplHome[i].show();
  }
  
  fred.walk();
  fred.show();
  
  oldpplhome[0].walk();
  oldpplhome[0].show();
  oldpplhome[1].walk();
  oldpplhome[1].show();
  oldpplhome[2].walk();
  oldpplhome[2].show();
  oldpplhome[3].walk();
  oldpplhome[3].show();
  oldpplhome[4].walk();
  oldpplhome[4].show();

  
}
