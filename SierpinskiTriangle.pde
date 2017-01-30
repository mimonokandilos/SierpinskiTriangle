public void setup()
{
	background(255);
	size(400,400);
}
public void draw()
{
	background(0);
	sierpinski(0,400,400);
}
int num = 20;

public void mouseDragged()//optional
{
	num += 5;
}

public void sierpinski(int x, int y, int len) 
{
	int red = (int)(Math.random()*255);
	int green = (int)(Math.random()*255);
	int blue = (int)(Math.random()*255);
	if(len <= num)
	{
		fill(red,green,blue);
		stroke(red,green,blue);
		triangle(x, y, x + len/2, y - len/2, x+ len, y);	
	}
	else
	{
		fill(red,green,blue);
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}

}