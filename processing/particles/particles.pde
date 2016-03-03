
float timeDelta;
long lastTime;

void setup()
{
  size(500, 500);    
  frameRate(120);
  toPass = 120 / spawnRate;  
}

// The class name always starts with uppercase!!

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

int spawnRate = 30;
int toPass;
color c;
float theta = 0;
void draw()
{
  long now = millis();
  timeDelta = (now - lastTime) / 1000.0f;
  
  background(0);
  
  c = color(map(sin(theta), -1.0f, 1.0f, 0.0f, 255f), random(0, 255), 100);
  
  theta += 0.01f;
    
    if (frameCount % toPass == 0)
    {
      Star s = new Star(mouseX, mouseY, 1, c, 5);
      gameObjects.add(s);
      s = new Star(mouseY, mouseX, 1, c, 5);
      gameObjects.add(s);
    }
  
  for(int i = gameObjects.size() - 1 ; i >= 0   ;i --)
  {
    GameObject gameObject = gameObjects.get(i);
    gameObject.update();
    gameObject.render();
  }
  
  if (keys[' '])
  {
    gameObjects.clear();
  }
 println(gameObjects.size());
}