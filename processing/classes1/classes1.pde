void setup()
{
  size(500, 500);
  ship = new Ship(); // Essential! You need to create the instance
  ship1 = new Ship(); // by calling the constructor, otherwise you will generate a NullPointerException
  
  ship.pos.x = 100;
  ship1.pos.x = 200;
}

Ship ship; // instances of the class should have a lower case character
Ship ship1; 

void draw()
{
   background(0);
   
   ship.update();
   ship.render();
   
   ship1.update();
   ship1.render();
}