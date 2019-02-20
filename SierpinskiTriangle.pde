public void setup()
{
  size(500, 500);
  background(#49A541);
  noStroke();
  fill(#EDE84D);
  sierpinski(0, 500, 500);
}
public void draw()
{

}

public void sierpinski(float x, float y, float len) 
{
  if(len <= 20)
  {
    triangle(x, y, x+len, y, x+(len/2), y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4, y-len/2,len/2);  
  }
}
