class Bullet extends GameObject
{
  Bullet(float x, float y, float theta)
  {
    super(x,y);
    this.theta = theta;
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    
    pos.add(forward);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(theta);
    line(0, -5, 0, 5);
    popMatrix();     
  }
}