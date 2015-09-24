void setup()
{
  size(50, 50);  
  background(0);
  stroke(0, 255, 255);
  fill(0);
  x = width / 2;
  y = height / 2;
  radius = width / 2;
  eyeradius = width / 6;
  noseradius = eyeradius/2; 
  eyexoffset = x/3;
  eyeyoffset = y/3;
  mouthlength = eyeradius*1.3f;
  mouthyoffset = y*1.4f;
  mouthsideyoffset = mouthyoffset/1.5;
}

float x, y ; // Global variables
float xspeed = 6, yspeed = 0;
float radius;
float eyeradius;
float noseradius;
float eyexoffset;
float eyeyoffset;
float mouthlength;
float mouthyoffset;
float mouthsideyoffset;

void draw()
{  
  background(0);
  //Face
  ellipse(x, y, width, height);
  //eyes
  ellipse(x - eyexoffset, y - eyeyoffset, eyeradius, eyeradius);
  ellipse(x + eyexoffset, y - eyeyoffset, eyeradius, eyeradius);
  //nose
  ellipse(x, y, noseradius, noseradius);
  //mouth line
  line(x - mouthlength, mouthyoffset, x + mouthlength , mouthyoffset);
  //mouth sides
  line(x - mouthlength, mouthyoffset, x - mouthsideyoffset, mouthsideyoffset);
  line(x + mouthlength, mouthyoffset, x + mouthsideyoffset, mouthsideyoffset);
  

  
}
