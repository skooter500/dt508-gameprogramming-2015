// Classes are a description of what a software "this" IS 
// And what it DOES
// Class names should start with an UPPERCASE character
class Ship
{
  // Its fields are what the Ship IS
  PVector pos;
  PVector forward;
  float w = 50, halfW;
  float theta;
  
  // A constructor is a special method used to create
  // objects from the class
  // AKA an instance of the class
  // Constructors do not have a return type
  // Its always the same name as the class
  // You can have lots of constructors so long as they all take different parameters  
  Ship()
  {
    halfW = w * 0.5f;
    pos = new PVector(width * 0.5f, height * 0.5f);
    forward = new PVector(0, -1);
  }
  
  // Methods on a class are what the instance of the class can do 
  void update()
  {
    forward.x = sin(theta);
    forward.y = - cos(theta);
    if (keyPressed)
    {
      if (keyCode == LEFT)
      {
        theta -= 0.01f;
      }
      if (keyCode == RIGHT)
      {
        theta += 0.01f;
      }
      if (keyCode == UP)
      {
        pos.add(forward);
        //pos += forward;
      }
      if (keyCode == DOWN)
      {
        pos.sub(forward);
      }
    }
  }
  
  void render()
  {
    stroke(255);
    pushMatrix(); // Store the old transform
    translate(pos.x, pos.y); // You write these in the opposite order you want them to happen
    rotate(theta); // SO this means rotate first and then translate
    line(- halfW, halfW, 0,  -halfW);
    line(halfW, halfW, 0, -halfW);
    line(- halfW, halfW, 0,0);
    line(halfW, halfW, 0,0); 
    popMatrix(); // Restore the old transform
  }
}