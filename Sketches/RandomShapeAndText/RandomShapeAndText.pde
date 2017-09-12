void setup() {
size(800,800);
noStroke();
background(255);
frameRate(20);

//center the rectangles and text
rectMode(CENTER);
textAlign(CENTER,CENTER);
}

void draw() {
  fill(255,255,255,20);
  rect(width/2,height/2, width,height);
  
  //generate a random positions near the mouse.
  float x = mouseX + random(-60,60);
  float y = mouseY + random(-60,60);
  float mRed = random(255);
  float mGreen = random(255);
  float mBlue = random(255);
  //now call those varriables.
  fill(mRed,mGreen,mBlue);
  //ellipse(x,y,10,10);
  //determine which shape to draw
  int shapeChoice = int(random(3));
  println(shapeChoice);
  
  //logic! -- If statements use 2 = signs. never 1.
  if (shapeChoice == 0){
   //draw an ellipse
   ellipse(x,y,10,10);
  }
  
if (shapeChoice == 1){
   //draw a rectanle
   rect(x,y,10,10);
  }
  
  if (shapeChoice == 2) {
   //draw an text
   text("YOU FACE JARRAXUS",x, y);
  
}
  
}