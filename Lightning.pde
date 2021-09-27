int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(500,500);
  strokeWeight(5);
  background(-10, -10, -10);
  frameRate(200);
  textSize(15);
  text("click for a new spark from the crystal ball", 30,50);
}
void draw()
{
    ellipse(0,150,30,30);
    stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
   while (endX < 500) {
    endX = startX + ((int)(Math.random()*10));
    endY = startY + ((int)(Math.random()*20-9));
    line(startX,startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
    startX = 0;
    startY = 150;
    endX = 0;
    endY = 150;
}
