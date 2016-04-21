class SnakePart extends GameObject
{
  GameObject nextPart;
  float distance;
  float wigglyness = 10.0f;
  
  SnakePart(float x, float y, GameObject nextPart)
  {
    super(x, y);
    w = 10;
    this.nextPart = nextPart;
    distance = PVector.dist(pos, nextPart.pos);  
  }
  
  void update()
  {
    PVector wantedPosition = PVector.add(nextPart.pos, PVector.mult(nextPart.forward, -distance));
    pos = PVector.lerp(pos, wantedPosition, timeDelta * wigglyness);
    
    PVector toTarget = PVector.sub(nextPart.pos, pos);    
    toTarget.normalize();
    float wantedAngle = toTarget.heading();    
    wantedAngle += HALF_PI;
    if (abs(theta - wantedAngle) >= PI)
    {     
      println("flip: " + theta + " " + wantedAngle);
    }
    
    theta = lerp(theta, wantedAngle, timeDelta * wigglyness);
    
    forward.x = sin(theta);
    forward.y = -cos(theta);
  }
  
  void render()
  {    
    stroke(255);
    fill(255);
    line(nextPart.pos.x, nextPart.pos.y, pos.x, pos.y);
    pushMatrix(); // reset the translation and rotation
    translate(pos.x, pos.y);
    rotate(theta); // We want rotate to happen first, so you make the call AFTER translate    
    ellipse(0, 0, w, w);
    popMatrix();
  }
}