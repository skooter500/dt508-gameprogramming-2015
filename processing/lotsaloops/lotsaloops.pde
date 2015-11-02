void setup()
{
  size(500, 500);
}

void draw()
{

  // Draw some lines
  line(100, 10, 100, 100);
  line(120, 10, 120, 100);
  line(140, 10, 140, 100);
  line(160, 10, 160, 100);
  line(180, 10, 180, 100);

  // Draw some lines using a for loop 
  for (int x = 100 ; x <= 180 ; x += 20)
  {
    line(x, 10, x, 100);
  }
  
  // Another way of doing the same loop 
  for (int line = 0 ; line < 5 ; line ++)
  {
    int x = 100 + (line * 20);
    line(x, 10, x, 100);
  }
  
  // The same using a while loop
  int line = 0;
  while (line < 5)
  {
    int x = 100 + (line * 20);
    line(x, 10, x, 100);
    line ++;
  }
  
  // And now another while loop
  int xx = 100;
  while (xx <= 180)
  {
    line(xx, 10, xx, 100);
    xx += 20;
  }
  
  // Circles stuff
  int w = 10;
  stroke(255);
  background(0);
  noFill();
  while(w < 500)
  {
    ellipse(250, 250, w, w);
    w += 10;
  }

  // Clock stuff
  float thetaInc = TWO_PI / 12.0f;
  float radius = 200;
  for(int i = 1 ; i <= 12 ; i ++)
  {
    float theta = i * thetaInc;
    float x = 250.0f + sin(theta) * radius;
    float y = 250.0f - cos(theta) * radius;
    text(i, x, y);
  }

  // Clock stuff using a while loop
  int i = 1;
  while (i <= 12)
  {
    float theta = i * thetaInc;
    float x = 250.0f + sin(theta) * radius;
    float y = 250.0f - cos(theta) * radius;
    text(i, x, y);
    i ++;
  }

  // Another way of doing the clock stuff
  i = 1;
  for (float theta = thetaInc ; theta <= TWO_PI ; theta += thetaInc)
  {
    float x = 250.0f + sin(theta) * radius;
    float y = 250.0f - cos(theta) * radius;
    text(i, x, y);
    i ++;
  }
 
   // And some lines! 
  float y = height / 2;
  float yInc = 2;
  while (y < height)
  {
    line (0, y, width, y);
    y += yInc;
    yInc += 3f;  
  }

}
