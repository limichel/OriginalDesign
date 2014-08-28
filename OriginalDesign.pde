void setup()
{
	size(400, 400);
}
void draw()
{
	background(200);
	petals();
	center();
	leaf();
	butterfly();
}
void petals()
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
void center()
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
void leaf()
{
	stroke(0, 80, 0);
	fill(0, 100, 0);
	bezier(280, 300, 260, 330, 340, 350, 360, 380);
	bezier(280, 300, 350, 330, 370, 350, 360, 380);
	line(295, 320, 340, 350);
}
void butterfly()
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