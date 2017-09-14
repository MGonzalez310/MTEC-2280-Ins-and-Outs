//declare global variable,always in set up never set it outside set up.
float xPos;
float yPos;
float xPos2;
float yPos2;
float d = 40;
float xSpeed = 5;
float ySpeed = 3;
float xSpeed2 = -5;
float ySpeed2 = -3;
float r;
float g;
float b;

void setup() {
  size (800, 600);
  background(0);
  noStroke();

  //position of the ball
  xPos = width/2;
  yPos = height/2;
  xPos2 = width*.25;
  yPos2 = height*.25;
  r = random(255);
  g = random(255);
  b = random(255);
}

void draw() {
  //draw the pong ball

  fill(r, g, b);
  background(0);
  ellipse(xPos, yPos, d, d);
  ellipse(xPos2,yPos2, d, d);

  //move the pong ball
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  xPos2 = xPos2 + xSpeed2;
  yPos2 = yPos2 + ySpeed2;
  //if ball hits end of wall bounce backwards.
  if (xPos >= width) {
    xSpeed = xSpeed * -1 ;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (xPos <=0) {
    xSpeed = xSpeed * -1;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (yPos >= height) {
    ySpeed = ySpeed * -1 ;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (yPos <=0) {
    ySpeed = ySpeed * -1;
    r = random(255);
    g = random(255);
    b = random(255);
  }
   if (xPos2 >= width) {
    xSpeed2 = xSpeed2 * -1 ;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (xPos2 <=0) {
    xSpeed2 = xSpeed2 * -1;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (yPos2 >= height) {
    ySpeed2 = ySpeed2 * -1 ;
    r = random(255);
    g = random(255);
    b = random(255);
  }
  if (yPos2 <=0) {
    ySpeed2 = ySpeed2 * -1;
    r = random(255);
    g = random(255);
    b = random(255);
  }
}