class Balloon {
  int mySize, myX, myY;

  //the "intalizer" for objects aka constructor
  Balloon(int x, int y, int biggness) {
    mySize = biggness;
    myX = x;
    myY = y;
  }
  Balloon() {
    mySize = 10;
    myX = 0;
    myY = 0;
  }
  Balloon(int x, int y) {
    mySize = 50;
    myX = x;
    myY = x;
  }
  void inflate() {
    mySize = mySize + 1;
  }
  void show() {
    fill(255, 0, 0);
    ellipse(myX, myY, mySize, mySize);
  }
  void poppy() {
    // if the mouse is within 20 pixel of the balloon then pop
    if (dist(myX, myY, mouseX, mouseY) <= mySize/2) {
      mySize = 0;
    }
  }
  void avoid() {
    // if mouse is on the left of the ballooon, RANDOMLY WALK TOWARDS THE RIGHT
    if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 20) { //-2, -1, 0, 1, 2, 3, 4
      myX = myX + (int)(Math.random()*7)-2;
    }
  }
}

Balloon bob, sue, jim;
void setup()
{
  size(300, 300); 
  bob = new Balloon((int)(Math.random()*300), (int)(Math.random()*300), (int)(Math.random()*300));
  jim = new Balloon();
  sue = new Balloon(150, 150);
}
void draw() {
  background(0);
  bob.poppy();
  jim.poppy();
  sue.poppy();
  
  bob.avoid();
  sue.avoid();
  jim.avoid();

  bob.show();
  jim.show();
  sue.show();
}
