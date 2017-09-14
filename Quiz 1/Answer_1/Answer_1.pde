void setup() {
  size(800, 800);
  background(0, 100, 100);
  strokeWeight(2);
}

void draw() {
  //red rectangle
  stroke(0);
  fill(255, 0, 0);
  rect(width/2, height/2, width/2, height/2);
  
  noStroke();
  ellipse(width*.25,height*.25,width/2,height/2);
}