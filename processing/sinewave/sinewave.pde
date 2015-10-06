float cx, cy;
float theta = 0.0f;
float radius = 1;
float smallRadius = 50;
float x = 0;
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
  float y = cy +sin(theta) * radius;
  color c = color(random(0, 255), random(0, 255), random(0, 255));
  stroke(c);
  fill(c);
  
  ellipse(x, y, smallRadius * 2, smallRadius * 2);
  theta += 0.1f;
  radius += 1;
  x ++;
  smallRadius -=0.5;
}
