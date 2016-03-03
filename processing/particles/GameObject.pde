class GameObject
{
  PVector pos;
  PVector forward;
  PVector velocity;
  
  float theta = 0.0f;
  float w;
  float halfW;
  float speed = 5.0f;
  color c; 
  
  GameObject(float x, float y)
  {
    pos = new PVector(x, y);
    theta = 0;
    forward = new PVector(0, -1);
    velocity = new PVector(0, 0);
    w = 50;
    halfW = w * 0.5f;
    theta = 0.0f;
  }
  
  GameObject()
  {
    // This calls a constructor in the same class
    this(width / 2, height / 2);
  } 
  
  public void update()
  {
  }
  
  public void render()
  {
  }
  
}