fish[] f = new fish[100];
PImage pfish;
PImage shark;

void setup()
{

  imageMode(CENTER);
  pfish = loadImage ("FISH.png");
  shark = loadImage("shark.png");
  fullScreen();
  for (int i = 0; i < f.length; i+=5) 
  { 
    f[i] = new fish(0, 400);
  }
}

void draw()
{ 
  background(#0A89F5);
  for (int i = 0; i < f.length; i+=5)
  {
    //scale(.2);
    pushMatrix();
    scale(.7);
    f[i].display();
    popMatrix();
    f[i].movement();
    f[i].more();
  }
}



class fish
{
  float x;
  float y;
  float dx;
  float dy;

  fish(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    dx = random(-5,5);
    dy = random(-5,5);
  }
  void display()
  {
   
    image(pfish, x, y);
  }

  void movement() {
    if (x < 0 || x > width * 400) {
      dx *= -1;
    }
    if (y < 0 || y > height * 400) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }

  void more()
  {
    if (mousePressed == true)
    {
      image(shark,mouseX,mouseY);
    }
  }
}