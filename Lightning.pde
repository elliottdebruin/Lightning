int startX = 200;
int startY = 50;
int endX = 200;
int endY = 50;



void setup()
{
  size(400,400, P3D);
  background(0, 0, 0);
  strokeWeight(3);
}
void draw()
{
	fill(0,0,0,20);
	rect(0,0,400,400);

	while (endY < 400)
		{
			stroke(222,229,33);
			endY = startY + (int)(Math.random()*11);
			endX = startX + (int)(Math.random()*21-10);
			line(startX, startY, endX, endY);
			startX = endX;
			startY = endY;
				
			
		
	}

		

		noStroke();
fill(0,mouseX,255);
lights();
translate(200, 100, 0);
rotateX (mouseX * 0.03);
rotateY (mouseY * 0.03);
box(100, 100, 100);
}
void mousePressed()
{
startX = 200;
startY = 50;
endX = 200;
endY = 50;
}

