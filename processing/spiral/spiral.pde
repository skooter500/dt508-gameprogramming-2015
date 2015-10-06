float cx, cy;
float theta = 0.0f;
float radius = 1;
float smallRadius = 50;
void setup()
{
  size(500, 500);
  background(0);
  cx = width * 0.5f;
  cy = height * 0.5f;
}

void draw()
{
  //background(0);
  float x = cx + sin(theta) * radius;
  float y = cy -cos(theta) * radius;
  color c = color(random(0, 255), random(0, 255), random(0, 255));
  stroke(c);
  fill(c);
  
  ellipse(x, y, smallRadius * 2, smallRadius * 2);
  theta += 0.1f;
  radius += 1;
  smallRadius -=1;
}
