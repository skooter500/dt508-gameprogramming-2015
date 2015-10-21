void setup()
{
  size(500, 500);
  playerX = width / 2;
  playerY = height - (playerHeight * 2);
  bugX = width / 2;
}

float playerX;
float playerY;
float bugX;
float bugY;
float playerWidth = 50;
float playerHeight = 30;
float bugWidth = 50;
int frame = 60;
int score;

void draw()
{
  background(0);
  stroke(255);
  
  // Draw the player
  float halfWidth = playerWidth * 0.5f;
  float halfHeight = playerHeight * 0.5f;
  
  line (playerX - halfWidth, playerY + halfHeight
    , playerX + halfWidth, playerY + halfHeight);
  line (playerX - halfWidth, playerY + halfHeight
      , playerX - halfWidth, playerY);
  line(playerX - halfWidth, playerY
      , playerX - (playerWidth * 0.25f), playerY - halfHeight);
  line(playerX - (playerWidth * 0.25f), playerY - halfHeight
      , playerX + (playerWidth * 0.25f), playerY - halfHeight);
  line(playerX + (playerWidth * 0.25f), playerY - halfHeight
      , playerX + halfWidth, playerY);
  line(playerX + halfWidth, playerY
    , playerX + halfWidth, playerY + halfHeight);
    
  // Draw the bug
  stroke(255);
  float saucerHeight = bugWidth * 0.7f;
  float halfBugWidth = bugWidth * 0.5f;
  line(bugX + halfBugWidth, bugY, bugX, bugY + saucerHeight);
  line(bugX + halfBugWidth, bugY, bugX + bugWidth, bugY + saucerHeight);
  line(bugX, bugY + saucerHeight, bugX + bugWidth, bugY + saucerHeight);
  float feet = bugWidth * 0.2f;
  line(bugX + feet, bugY + saucerHeight, bugX, bugY + bugWidth);
  line(bugX + bugWidth - feet, bugY + saucerHeight, bugX + bugWidth, bugY + bugWidth);
  feet = bugWidth * 0.4f;
  line(bugX + feet, bugY + saucerHeight, bugX, bugY + bugWidth);
  line(bugX + bugWidth - feet, bugY + saucerHeight, bugX + bugWidth, bugY + bugWidth);
  line(bugX + feet, bugY + feet, bugX + feet, bugY + feet * 1.1f);  
  line(bugX + bugWidth - feet, bugY + feet, bugX + bugWidth - feet, bugY + feet * 1.1f);
  line(bugX + feet, bugY + feet * 1.4f, bugX + bugWidth - feet, bugY + feet * 1.4f); 
  
  if (frameCount % frame == 0)
  {
    bugY ++;
    bugX += random(-10.0f, 10.0f);
    frame --;
    if (frame == 0)
    {
      frame = 60;
    }
    
    // 
  }
   if (keyPressed)
   {
     if (keyCode == LEFT && playerX > halfWidth)
     {
       playerX --;
     }
     if (keyCode == RIGHT && playerX < width - halfWidth)
     {
       playerX ++; 
     }
     
     if (key == ' ')
     {
       // Check for bug hit
       float lazerY = 0;
       if (playerX > bugX  && playerX < bugX + bugWidth)
       {
         // I have hit the bug
         lazerY = bugY;
         bugY = 0;
         bugX = random(halfBugWidth, width - halfBugWidth);
         score ++;
       }
       else
       {
         lazerY = 0;
       }
       line(playerX, playerY - halfWidth, playerX, lazerY);
     }
   }
   text("Score: " + score, 10, 10); 
}
