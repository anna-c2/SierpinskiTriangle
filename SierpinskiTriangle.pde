int len = 100;
boolean grow = true;
public void setup()
{
  size(600,600);
  background(0);
  fill((int)(Math.random()*150), 175, (int)(Math.random()*250));
}

public void draw()
{
  background(0);
  sierpinski(0,600,len);
}
public void mousePressed()//optional
{
  fill((int)(Math.random()*150), 175, (int)(Math.random()*250));
  
   if(grow == true)
   {
     
     if(len < 701)
     {
       len+=100;
     }
    if(len == 700){
      grow = false;
    }
    
   }
  
   if(grow == false){
     if(len == 700 || len < 700)
     {
       len -= 100;
     }
     if(len == 100){
       grow = true;
     }
   }
  System.out.println(len);
}
public void sierpinski(int x, int y, int len)
{
  if(len < 15){
    triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else{
     sierpinski(x, y, len/2);
     sierpinski(x+len/2, y, len/2);
     sierpinski(x+len/4, y-len/2, len/2);
     
  }
     
}
