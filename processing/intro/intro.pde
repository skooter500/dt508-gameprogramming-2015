
// This is how you do comments in Processing
// The setup method gets called once at the start of the sketch
void setup()
{
  size(500, 500);
  background(255, 0, 255);
}

// The draw method gets called 60 times per second
void draw()
{
  stroke(60, 200, 90);
  fill(255, 255, 0);
  ellipse(200, 200, 100, 100);
  stroke(60, 0, 90);
  line(10, 10, 300, 300);
  fill(255, 255, 0);
  rect(300, 300, 30, 90);
   
}
