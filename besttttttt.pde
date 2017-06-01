PImage v;
boolean r = false;
boolean l = false;
float y = 570;
float x = 10;
float yb = 100;
float xb = 100;
void setup() {
  size(1400, 750, P3D);
  v = loadImage("v.jpg");
  v.resize(100, 60);
}
void draw() {
  background(0, 0, 15);
  image(v, xb, yb);
  yb = yb + 2;
  rect(x, y, 50, 80);
  if
    (x < 200 && x > 100 && yb < 710 && yb > 500) 
  {
    background(255, 20, 20);
  }
  if (yb > 750)
  {
    yb = yb - 650;
    xb = xb + 700;
  }
  if (r && x < 1300)
  {
    x = x + 10;
  }
  if (l && x > 20)
  {
    x = x -10;
  }
}
void keyPressed() {
  if (keyCode == RIGHT)
  {
    r = true;
  }
  if (keyCode == LEFT)
  {
    l = true;
  }
}
void keyReleased()
{
  if (keyCode == RIGHT)
  {
    r = false;
  }
  if (keyCode == LEFT)
  {
    l = false;
  }
}