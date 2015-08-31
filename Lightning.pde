int startX = (int)(Math.random()*400);
int startY = 0;
int endX = (int)(Math.random()*400);
int endY = 0;


void setup()
{
  size(400,400);
  background(0, 0, 0);
  strokeWeight(1);
}
void draw()
{
	
	while (endX < 400)
		{
			stroke(100,255,255);
			endY = startY + (int)(Math.random()*11);
			endX = startX + (int)(Math.random()*21-9);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
		}
		fill(100,100,100);
		noStroke();
		ellipse(0, 0, 100, 40);
		ellipse(75, 25, 125, 50);
}
void mousePressed()
{
startX = (int)(Math.random()*400);
startY = 0;
endX = (int)(Math.random()*400);
endY = 0;
}

