// The class name starts with uppercase
class Ship
{
  PVector pos;
  PVector forward;
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;
  color c; 
  
  
  // Constructor!!
  // HAS NO RETURN TYPE
  // Name is always the same as the class
  Ship()
  {
    // Constructor chaining. Call a constructor in the super class
    pos = new PVector(width / 2, height / 2);
    forward = new PVector(0, -1);
    w = 50;
    halfW = w * 0.5f;
    theta = 0.0f;
  }
 
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    forward.mult(speed);
    
    if (keys[UP])
    {
      pos.add(forward);
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