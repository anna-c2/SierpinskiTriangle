int length = 400;
public void setup()
{
	size(800,800);
}
public void draw()
{
	background(0);
	sierpinski(0,800,length);
}
public void keyPressed()//optional
{
	if(key == CODED)
	{
		if(keyCode == UP)
			length+=3;
		if(keyCode == DOWN)
			length-=3;
	}

}
public void sierpinski(int x, int y, int len) 
{
	fill(255);

	if(len <= 50)
	{
		triangle(x,y,x+len,y,x+len/2,y-len);

	}


	else 
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);

	}

		
	

}