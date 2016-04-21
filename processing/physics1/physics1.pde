void setup()
{
  size(500, 500);  
  
  pos = new PVector(50, height - 25);
  acc = new PVector(0, 0);
  vel = new PVector(25, -300);
  force = new PVector(0, 0);
  mass = 1;
}

PVector pos;
PVector acc;
PVector vel;
PVector force;
float mass;
float deltaTime = 1.0f / 60.0f;
float gravity = 80;
void draw()
{
  background(0);
  stroke(255);
  ellipse(pos.x, pos.y, 50, 50);
  
  if (keyPressed && key == ' ')
  {
    force.add(0, -400);
  }
  acc = PVector.div(force , mass);
  //println(acc);
  vel.add(PVector.mult(acc, deltaTime));
  vel.y += gravity * deltaTime; 
 
  //vel += acc * Time.deltaTime; // This is Unity
  pos.add(PVector.mult(vel, deltaTime));
  // pos += vel * Time.deltaTime; // This is Unity
  
  if (pos.y > height - 25)
  {
    // Bounce!
    pos.y = height - 25;
    vel.y *= -0.5;
    // vel.x *= 0.8;
  }
  
  vel.mult(0.995f);
  
  force.x = force.y = 0.0f;
  
}