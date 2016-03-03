void setup()
{
  size(500, 500);
  gameObjects.add(new Player(100, 100));
}

boolean[] keys = new boolean[2000];

ArrayList<GameObject> gameObjects = new ArrayList<GameObject>();

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}

void draw()
{
  background(0);
  stroke(255);
  
  for(int i = 0 ; i < gameObjects.size(); i ++)
  {
    GameObject g = gameObjects.get(i);
    g.render();
    g.update();
  }
}