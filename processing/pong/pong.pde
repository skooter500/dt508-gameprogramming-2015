void setup()
{
  size(500, 500);
  
  playerY[0] = playerY[1] = (height * 0.5f) - (playerHeight * 0.5f);
  playerX[0] = gap;
  playerX[1] = (width - gap) - playerWidth;
  
  ballX = (height * 0.5f) - (ballSize * 0.5f);
  ballY = (height * 0.5f) - (ballSize * 0.5f);
  
  int i = (int) random(0, 2);
  if (i == 0)
  {
    ballSpeedX = -1;
  }
  else
  {
    ballSpeedX = 1;
  }
  
  ballSpeedY = random(-5, 5); 
}

void drawBall()
{
  rect(ballX, ballY, ballSize, ballSize);
}

void updateBall()
{
  ballX += ballSpeedX;
  ballY += ballSpeedY;
  
  if ((ballY <= 0) || (ballY + ballSize > height))
  {
    ballSpeedY *= -1;
  }
  
  if ((ballX < playerX[0] + playerWidth) 
      && (ballY + ballSize > playerY[0])
      && (ballY < playerY[0] + playerHeight ))
  {
    ballSpeedX *= - 1.2f;
  }
}

void drawPlayers()
{
  for(int i = 0 ; i < playerX.length ; i ++)
  {
    rect(playerX[i], playerY[i], playerWidth, playerHeight);
  }
}

float ballSize = 20;
boolean paused = true;
float ballX;
float ballY;
float ballSpeedX;
float ballSpeedY;
float playerHeight = 100;
float playerWidth = 20;
float[] playerX = new float[2];
float[] playerY = new float[2];
int[] score = new int[2];
float gap = 50;

void draw()
{
  background(0);
  stroke(255);
  fill(255);
  drawBall();
  drawPlayers();
  updateBall();
}