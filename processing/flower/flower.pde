void setup()
{
  size(500, 500);
  centX = width * 0.5f;
  centY = height * 0.5f;
  smooth();
}

float centX, centY;

void draw()
{
  background(0);
  stroke(255);
  fill(0);

  // Draw the lines
  for (float x = 0 ; x < width ; x += 50)
  {
    line(x, 0, x, height);
    line(0, x, width, x);
  }

  
  boolean smile = true;
  // Draw the smiley faces
  for (int y = 0 ; y < height ; y += 50)
  {
    for (int x = 0 ; x < width ; x += 50)
    {
      stroke(255, 255, 0);
      ellipse(x + 25, y + 25, 50, 50);
      // The eyes and nose
      ellipse(x + 15, y + 10, 4, 4);
      ellipse(x + 35, y + 10, 4, 4);
      ellipse(x + 25, y + 25, 4, 4);

      // The mouth
      line(x + 20, y + 38, x + 30, y + 38);
      if (smile)
      {
        // Draw an upturned mouth
        line(x + 20, y + 38, x + 18, y + 35);
        line(x + 30, y + 38, x + 32, y + 35);
      }
      else
      {
        // Draw a downturned mouth
        line(x + 20, y + 38, x + 18, y + 41);
        line(x + 30, y + 38, x + 32, y + 41);
      }
      smile = ! smile;
    }
    smile = ! smile;
  }
  
  // Draw the flower
  float petals = 12;
  float thetaInc = TWO_PI / petals;
  float radius = 50;
  for (float theta = 0 ; theta < TWO_PI ; theta += thetaInc)
  {
    float x = centX + sin(theta) * radius;
    float y = centY - cos(theta) * radius;
    stroke(255, 255, 0);
    fill(255, 255, 0);
    ellipse(x, y, 40, 40);
  }
  stroke(255);
  fill(255);
  ellipse(centX, centY, 80, 80);


}
