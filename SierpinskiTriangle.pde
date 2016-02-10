private float r, g, b;

public void setup()
{
  size(400, 400);
  background(0);
  noStroke();
}
public void draw()
{
  mouse();
  fill(r,g,b); 
  sierpinski(80, 300, 250);
}
public void mouse()//optional
{
  r=mouseX/1.5687;
  b=mouseY/1.5687;
  g=mouseX+mouseY/0.78431;
}
public void sierpinski(int x, int y, int len) 
{
  if (len<=10)
  {
    triangle(x, y, len/2+x, y-len, len+x, y);
  } else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

