
class fish
{
  float x;
  float y;
  float dx;
  float dy;

  fish(float xPos, float yPos) {
    x = xPos;
    y = yPos;
    dx = random(-5, 5);
    dy = random(-5, 5);
  }

   void update() {
    if (x < 500 || x > width) {
      dx *= -10;
    }
    if (y < 500 || y > height) {
      dy *= -10;
    }

    x += dx;
    y += dy;
  }

  void display()
  {

    image(pfish, width/2,height/2);
  }
}