void setup() {
  size(600,600);
  background(0);
  noStroke();

}

void draw() {
  //Map takes 5 values, input,Input min, input max, output min, output max 
  background(0);
  float myRed = map(mouseX,0,width,0,255);
  float myGreen = map(mouseY,0,height,0,255);
  
  fill(myRed, myGreen, 0);
  ellipse(mouseX,mouseY,20,20);
 
}