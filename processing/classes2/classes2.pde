void setup()
{
  size(500, 500);
  
  ship = new Ship(30, 500);
  aiShip = new AIShip(50, 50);
  
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

ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 

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
  
  for (int i = 0 ; i < bullets.size() ; i ++)
  {
    bullets.get(i).update();
    bullets.get(i).render();
    
  }
}