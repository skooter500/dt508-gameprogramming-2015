// The class name starts with uppercase
class AIShip extends GameObject
{ 
  
  AIShip()
  {
    super();
  }
  
  AIShip(float x, float y)
  {
    super(x, y);
  }
  
  // This OVERRIDES the update method from the superclass
  void update()
  {
      forward.x = sin(theta);
      forward.y = - cos(theta);
      
      // Move in the direction we are rotated
      forward.mult(speed);
      pos.add(forward);
      
      
      if (pos.y - halfW < 0)
      {
        theta = HALF_PI;
        pos.y = halfW;
      }
      if (pos.x + halfW > width)
      {
        theta = PI;
        pos.x = width - halfW;
      }
      if (pos.y + halfW > height)
      {
        theta = PI + HALF_PI;
        pos.y = height - halfW;
      }
      if (pos.x < halfW)
      {
        theta = 0;
        pos.x = halfW;
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