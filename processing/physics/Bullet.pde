class Bullet extends GameObject
{
  float speed = 10.0f;
  
  
  Bullet(float x, float y, float theta)
  {
    super(x,y);
    this.theta = theta;
  }
  
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);
    velocity.x = forward.x;
    velocity.y = forward.y;    
    velocity.mult(speed);    
    pos.add(velocity);
    
    if ((pos.x < 0) || (pos.x > width) || (pos.y < 0) || (pos.y > height))
    {
      bullets.remove(this);
    }    
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