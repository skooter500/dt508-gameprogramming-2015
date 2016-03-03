class Bullet extends GameObject
{
  Bullet(float x, float y)
  {
    super(x, y);
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    pos.add(forward);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, halfW, 0, -halfW);
    popMatrix();
  }
}