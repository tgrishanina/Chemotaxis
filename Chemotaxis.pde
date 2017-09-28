Bacteria [] colony;
void setup() {
  size(500, 500);
  colony = new Bacteria[100];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new Bacteria();}
}
void draw() {
  background(0);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}
class Bacteria {
  int myX; 
  int myY;
  int r;
  int g;
  int b;
  Bacteria() {
    myX = 250;
    myY = 250;
    r = (int)((Math.random()*10)+10);
    g = (int)((Math.random()*100)+80);
    b = (int)((Math.random()*100)+80);
  }
  void move() {
    myX = myX + ((int)(Math.random()*5)-2);
    myY = myY + ((int)(Math.random()*5)-2);
  }
  void show() {
    fill(r, g, b);
    ellipse(myX, myY, 12, 12);
  }
}
