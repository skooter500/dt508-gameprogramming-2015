void setup()
{
  size(500, 500);
  
  ship = new Ship(width / 2, height / 2);  
  gameObjects.add(ship);
  
  GameObject next = ship;
  float gap = 30;
  for (int i = 0 ; i < 1 ; i ++)
  {
    SnakePart sp = new SnakePart(next.pos.x, next.pos.y + gap, next);
    gameObjects.add(sp);
    next = sp;
  }
}


Ship ship;
AIShip aiShip;
float timeDelta = 1.0f / 60.0f; 

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>(); 

void draw()
{
  background(0);
   
  for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
    GameObject go = gameObjects.get(i);
    go.update();
    go.render();
  }    
}