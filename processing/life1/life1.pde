void setup()
{
  size(500, 500);
  
  board = new boolean[rows][cols];
  cellWidth = width / cols;
  cellHeight = height / rows;
  
  board[0][5] = true;
  board[1][5] = true;
  board[2][10] = true;
  board[3][5] = true;
  
}

boolean[][] board;
int cols = 100;
int rows = 100;
int cellWidth;
int cellHeight;

int countLiveCells(int row, int col)
{
  int count = 0;
  if (row > 0 && col > 0 && board[row - 1][col -1])
  {
    count ++;
  }
  //... More to go here
  //
  return count;
}

void draw()
{
  // Nested for loop that goes through the board array
  // And if the element is true, it draws a rect
  
  for (int row = 0 ; row < rows ; row ++)
  {
    for (int col = 0 ; col < cols ; col ++)
    {
      float x = col * cellWidth;
      float y = row * cellHeight;
      stroke(50);
      if (board[row][col])
      {
        fill(0, 255, 255);        
      }
      else
      {
        fill(0);        
      }
      rect(x, y, cellWidth, cellHeight);
    }
  }
  
  
}