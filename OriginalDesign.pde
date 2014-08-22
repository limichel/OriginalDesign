void setup()
{
	size(400, 400);
}
void draw()
{
	petals();
    center();
    leaf();
}
void petals()
{
	noStroke();
	fill(200, 0, 100);
	ellipse(195, 150, 50, 50);
	ellipse(230, 175, 50, 50);
    ellipse(220, 220, 50, 50);
    ellipse(180, 220, 50, 50);
    ellipse(165, 180, 50, 50);
}
void center()
{
    noStroke();
    fill(0, 0, 100);
    ellipse(200, 190, 50, 50);
}
void leaf()
{
    stroke(0, 80, 0);
    fill(0, 100, 0);
    bezier(280, 300, 260, 330, 340, 350, 360, 380);
    bezier(280, 300, 350, 330, 370, 350, 360, 380);
    line(295, 320, 340, 350);
}
