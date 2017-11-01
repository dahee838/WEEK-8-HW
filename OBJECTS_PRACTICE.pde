fish[] f = new fish[100];
PImage pfish;

void setup()
{
  background(#0A89F5);
  imageMode(CENTER);
  pfish = loadImage ("FISH.png");
  fullScreen();
  for (int i = 0; i < f.length; i+=100) { 
    f[i] = new fish(random(100),0);
  }
}

void draw()
{ 
  for (int i = 0; i < f.length; i+=100)
  {
    
    scale(.9);
    f[i].update();
    f[i].display();
    
  }
}