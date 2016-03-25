// The class name starts with uppercase
class Ship extends GameObject
{
  
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    super();    
  }
  
  Ship(float x, float y)
  {
    super(x, y);
  }
  
  int toPass = 60 / 5; // How many frames must pass
  int ellapsed = toPass;
 
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    velocity.x = forward.x;
    velocity.y = forward.y;    
    velocity.mult(speed);    
   
    
    if (keys[' '] && ellapsed > toPass)
    {
      PVector bulletPos = pos.get();
      bulletPos.add(PVector.mult(forward, 30)); // Start the bullet 30 units in front of the player
      Bullet b = new Bullet(bulletPos.x, bulletPos.y, theta);
      bullets.add(b);
      ellapsed = 0;
    }
    ellapsed ++;
    
    if (keys[UP])
    {
      pos.add(velocity);
    }      
    if (keys[LEFT])
    {
      theta -= 0.1f;
    }
    if (keys[RIGHT])
    {
      theta += 0.1f;
    }      
    
    if (pos.x < 0)
    {
      pos.x = width;
    }
    
    if (pos.x > width)
    {
      pos.x = 0;
    }
    
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    if (pos.y > height)
    {
      pos.y = 0;
    }
  }
  
  void render()
  {
    stroke(255);
    pushMatrix(); // reset the translation and rotation
    translate(pos.x, pos.y);
    rotate(theta); // We want rotate to happen first, so you make the call AFTER translate    
    line(- halfW, halfW, 0, - halfW);
    line(0, - halfW, halfW, halfW);
    line(halfW, halfW, 0, 0);
    line(- halfW, halfW, 0, 0);
    popMatrix();
  }   
}