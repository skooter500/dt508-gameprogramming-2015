void setup()
{
  size(500, 500);
  centX = width * 0.5f;
  centY = height * 0.5f;
}

float centX, centY;
void draw()
{
  /*
  line(30, 20, 30, 100);
  line(40, 20, 40, 100);
  line(50, 20, 50, 100);
  line(60, 20, 60, 100);
  */ 
  
  float r = 255;
  float thetaInc = TWO_PI / 12.0f;
  float radius = width / 2;
  for (float theta = 0 ; theta <= TWO_PI ; theta += thetaInc)
  {
    float x = centX + sin(theta) * radius;
    float y = centY - cos(theta) * radius;
    ellipse(x, y, 50, 50);
  }
  
}
