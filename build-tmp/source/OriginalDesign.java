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

public class OriginalDesign extends PApplet {

public void setup()
{
	size(400, 400);
}
public void draw()
{
	background(200);
	petals();
	center();
	leaf();
	butterfly();
}
public void petals()
{
	noStroke();
	//middle flower
	fill(200, 0, 100);
	ellipse(195, 150, 50, 50);
	ellipse(230, 175, 50, 50);
	ellipse(220, 220, 50, 50);
	ellipse(180, 220, 50, 50);
	ellipse(165, 180, 50, 50);
    //upper left flower
    ellipse(50, 30, 40, 40);
    ellipse(75, 45, 40, 40);
    ellipse(70, 80, 40, 40);
    ellipse(40, 80, 40, 40);
    ellipse(30, 50, 40, 40);
    //upper right flower
    ellipse(300, 40, 40, 40);
    ellipse(330, 55, 40, 40);
    ellipse(320, 90, 40, 40);
    ellipse(290, 90, 40, 40);
    ellipse(275, 60, 40, 40);
}
public void center()
{
	noStroke();
	fill(0, 0, 100);
    //middle flower
    ellipse(200, 190, 50, 50);
    //upper left flower
    ellipse(55, 60, 40, 40);
    //upper right flower
    ellipse(305, 70, 40, 40);
}
public void leaf()
{
	stroke(0, 80, 0);
	fill(0, 100, 0);
	bezier(280, 300, 260, 330, 340, 350, 360, 380);
	bezier(280, 300, 350, 330, 370, 350, 360, 380);
	line(295, 320, 340, 350);
}
public void butterfly()
{
	stroke(200, 100, 0);
	fill(255, 102, 51);
	//left wing
	ellipse(mouseX-10, mouseY+40, 25, 25);
	ellipse(mouseX-15, mouseY+20, 30, 30);
	//right wing
	ellipse(mouseX+10, mouseY+40, 25, 25);
	ellipse(mouseX+15, mouseY+20, 30, 30);
	//body
	noStroke();
	fill(75, 50, 0);
	bezier(mouseX, mouseY, mouseX-10, mouseY+20, mouseX-10, mouseY+40, mouseX, mouseY+60);
	bezier(mouseX, mouseY, mouseX+10, mouseY+20, mouseX+10, mouseY+40, mouseX, mouseY+60);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
