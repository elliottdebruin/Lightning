import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Lightning extends PApplet {

int startX = 200;
int startY = 50;
int endX = 200;
int endY = 50;



public void setup()
{
  size(400,400, P3D);
  background(0, 0, 0);
  strokeWeight(2);
}
public void draw()
{
	fill(0,0,0,40);
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
rotateX (mouseX * 0.03f);
rotateY (mouseY * 0.03f);
box(100, 100, 100);
}
public void mousePressed()
{
startX = 200;
startY = 50;
endX = 200;
endY = 50;
}

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Lightning" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
