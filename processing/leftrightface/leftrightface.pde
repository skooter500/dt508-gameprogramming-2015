void setup()
{
  size(500, 500);  
  background(0);
  stroke(0, 255, 255);
  fill(0);
  x = width / 2;
  y = height / 2;
}

float x = 400, y = 100; // Global variables
float xspeed = 6, yspeed = 0;
float radius = 25;
void draw()
{  
  background(0);

  ellipse(x, y, radius * 2.0f, radius * 2.0f);
  ellipse(x - 10, y - 10, 5, 5);
  ellipse(x + 10, y - 10, 5, 5);
  ellipse(x, y, 5, 5);
  
  line(x - 10, y + 10, x + 10 , y + 10);
  line(x - 10, y + 10, x - 15, y + 5);
  line(x + 10, y + 10, x + 15, y + 5);
  
  x += xspeed;
  y += yspeed;
  
  if (x >= 475)
  {
    xspeed *= -1;
  }
  
  if (x <= 25)
  {
    xspeed *= -1;
  }
  
}


