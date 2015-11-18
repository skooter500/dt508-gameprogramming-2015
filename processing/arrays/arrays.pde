void setup()
{
      background(0);

  size(500, 500);
  // How to assign values to the elements of an array
  ages[0] = 22;
  ages[1] = 26;
  ages[2] = 22;
  ages[3] = 18;
  ages[4] = 24;    
  
  for (int i = 0 ; i < ages.length ; i ++)
  {
    println(i + " " + names[i] + " age is " + ages[i]);
  }
  float sum = 0, min = ages[0], max = ages[0];
  int minIndex = 0, maxIndex = 0;
  for (int i = 0 ; i < ages.length ; i ++)
  {
    sum += ages[i];
    if (ages[i] < min)
    {
      min = ages[i];
      minIndex = i;
    }
    
    if (ages[i] > max)
    {
      max = ages[i];
      maxIndex = i;
    }
  }
  
  // Give each element in the float arrays a
  // random value
  for (int i = 0 ; i < xPos.length ; i ++)
  {
    xPos[i] = random(0, width);
    yPos[i] = random(0, height);
  }  
}

float[] ages = new float[5]; // Allocate a 5 element array all initialised to 0
//float[] ages = {22, 26, 22, 18, 24}; // This also works
// Allocate a 5 element array and fill it with these strings
String[] names = {"Niall", "Aaron", "Jack", "Pierce", "Brendan"};

float[] xPos = new float[100];
float[] yPos = new float[100];


// How to detect multiple keypresses
boolean[] keys = new boolean[512];
void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}
float x = 200, y = 200;
void draw()
{
  // This is how you get trails!
  fill(0,25);
  rect(0,0,width,height);
  fill(0);
  stroke(255);
  
  if (keys['W'])
   {
     y ++;
   }
   if (keys['A'])
   {
     x ++;
   }
   ellipse(x, y, 10, 10);
   for (int i = 0 ; i < xPos.length ; i ++)
   {
     point(xPos[i], yPos[i]);
     yPos[i] ++;
     if (yPos[i] > height)
     {
       yPos[i] = 0;
     }
   }
   /*for (int i = 0 ; i < 100 ; i ++)
   {
     float sx, sy;
     sx = random(0, width);
     sy = random(0, height);
     point(sx, sy);
   }
   */
}