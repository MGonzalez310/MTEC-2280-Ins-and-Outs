void setup() {
  fullScreen();
  background(255);
  frameRate(10);
  noStroke();
}

void draw() {
  //creat variables for colors.
  float mRed = random(255);
  float mGreen = random(255);
  float mBlue = random(255);
  //now call those varriables.
  fill(mRed,mGreen,mBlue);
  //BRAK THE SCREEN WALLPAPER ACHIEVED.
  //random location
  float x = random(width);
  float y = random(height);
  float x1 = random(width);
  float y1 = random(height);
  
  ellipse(x,y, random(x1),random(y1));
}