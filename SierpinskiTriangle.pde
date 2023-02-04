 int len = 100;
boolean grow = true;
public void setup()
{
  size(700,700);
  background(0);
}

public void draw()
{
  background(0);
  sierpinski(0,700,len);
}
public void mousePressed()//optional
{
  fill((int)(Math.random()*150), 175, (int)(Math.random()*250));
  if(grow == true){
   if(len == 700){
    grow = false;
   }
   if(len < 701){
     len+=100;
   }
  }
  else{
   if(len == 0){
    grow = true;
   }
   if(len > 700 && len > 0){
     len -= 100;
   }
  }
}
public void sierpinski(int x, int y, int len)
{
  if(len < 20){
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else{
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2);
  }
     
}
