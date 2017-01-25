public void setup()
{
	background(255);
	size(400,400);
}
public void draw()
{
sierpinski(100,200,100);
}
int num = 20;
public void mouseDragged()//optional
{
	num += 5;
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= num)
	{
		fill(0);
		triangle(x, y, x + len/2, y + len/2, x+ len, y);	
	}
	else
	{
		fill(0);
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y+len/2, len/2);
	}
}