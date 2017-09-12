void setup() {
size(800,800);
noStroke();
background(0);
frameRate(60);
}

void draw() {
  //generate a random positions near the mouse.
  float x = mouseX + random(-60,60);
  float y = mouseY + random(-60,60);
  float mRed = random(255);
  float mGreen = random(255);
  float mBlue = random(255);
  //now call those varriables.
  fill(mRed,mGreen,mBlue);
  ellipse(x,y,10,10);
}