//  Set up happens ONCE
void setup() {
 frameRate(240);  
  size(800,800);
//how many pixels thick
strokeWeight(3);
stroke(65,75,95);
}

void draw() {
  //draw a circle
  //make it grow depending on mouse position.
  background(0); //refreshes the screen during each draw to black.
  ellipse(width/2, height/2, mouseX,mouseY); //half the H and W. sizes are mouse positions
  //fill the next shape with a random color
  fill(random(255),random(255),random(255) );
}