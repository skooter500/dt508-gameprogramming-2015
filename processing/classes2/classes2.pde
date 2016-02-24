void setup()
{
  size(500, 500);
  
  ship = new Ship();
  aiShip = new AIShip();
  
  // Add 5 random stars
  for (int i = 0 ; i < 5 ; i ++)
  {
    Star star = new Star(
        random(100, width - 100)
        , random(100, height - 100)
        , random(50, 100)
        , color(random(100, 255), random(100, 255), random(100, 255))
        , (int) random(3, 20)
        );
  stars.add(star);
  }
}

// The class name always starts with uppercase!!
ArrayList<Star> stars = new ArrayList<Star>();

Ship ship;
AIShip aiShip;

boolean[] keys = new boolean[512];

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
    
  for(int i = stars.size() - 1 ; i >= 0   ;i --)
  {
    Star star = stars.get(i);
    star.update();
    star.render();
  }
  
  ship.update();
  ship.render();
  
  aiShip.update();
  aiShip.render();
  
  
}