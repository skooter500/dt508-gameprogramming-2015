void setup()
{
  size(500, 500);
  circle(100, 100, 20);
  println(celsiusToFarenheit(100));
  // Or
  float faren = celsiusToFarenheit(100);
}

// A method that has parameters, but doesnt return anything
void circle(float x, float y, float radius)
{
  ellipse(x, y, radius * 2, radius * 2);
}

// This method returns something
float celsiusToFarenheit(float celsius)
{
  return (celsius * 1.8) + 32;
}
