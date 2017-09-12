//declare global variable,always in set up never set it outside set up.
float xPos;
float yPos;
float d = 40;
float xSpeed = 5;
float ySpeed = 3;
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
  r = random(255);
  g = random(255);
  b = random(255);
}

void draw() {
  //draw the pong ball

  fill(r, g, b);
  background(0);
  ellipse(xPos, yPos, d, d);

  //move the pong ball
  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
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
}