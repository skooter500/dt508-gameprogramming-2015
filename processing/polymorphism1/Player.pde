class Player extends GameObject
{
  
  Player(float x, float y)
  {
    super(x, y);
    w = 50.0f;
    halfW = w / 2;
    println("In player constructor");
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    if (keys[UP])
    {
      pos.add(forward);
    }
    if (keys[DOWN])
    {
      pos.sub(forward);
    }
    if (keys[LEFT])
    {
      theta -= 0.1f;
    }
    if (keys[RIGHT])
    {
      theta += 0.1f;
    }
    if (keys[' '])
    {
      Bullet b = new Bullet(pos.x, pos.y);
      b.theta = theta;
      gameObjects.add(b);
    }
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    triangle(- halfW, halfW, 0, -halfW, halfW, halfW);
    popMatrix();
  }
  
}