class Star extends GameObject
{
  float points;
  float rotSpeed;
  float radius; 
  
  
  
  Star(float x, float y, float radius, color c, int points)
  {
    pos = new PVector(x, y);
    this.c = c;
    this.radius = radius;
    this.points = points;
    theta = random(0, TWO_PI);
    forward.x = sin(theta);
    forward.y = -cos(theta);
    rotSpeed = 0.01f;
    speed = 1.0f;
  }
  
  void update()
  {    
    theta += rotSpeed;
    if (theta > TWO_PI)
    {
      theta = 0;
    }
    radius += 0.1f;
    
    velocity = PVector.mult(forward, speed);
    pos.add(velocity);
    
    if ((pos.x < -halfW) ||  (pos.x > width + halfW) || (pos.y < -halfW) || (pos.y > height + halfW))
    {
      gameObjects.remove(this);
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    float thetaInc = TWO_PI / (points * 2);
    float lastX;
    float lastY;
    lastX = 0;
    lastY = -radius; 
    stroke(c);
    for (int i = 1 ; i <= (points * 2) ; i ++)
    {
      float theta = i * thetaInc;
      float x, y;
      if (i % 2 == 1)
      {
        x = sin(theta) * (radius / 2.0f);
        y = -cos(theta) * (radius / 2.0f);
      }
      else
      {
        x = sin(theta) * radius;
        y = -cos(theta) * radius;
      }
      line(lastX, lastY, x, y);
      lastX = x;
      lastY = y;      
    }
    
    popMatrix();
  }
}