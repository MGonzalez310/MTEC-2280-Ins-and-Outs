//global variable goes here. Before set up and draw.
int drawMode= 1;
//draw modes will be:
//1,2,3 will be ellipse
//4,5,6 will be rectangles
// 0 resets window
// stops all drawwing.
void setup() {
  size(800, 600);
  background(255);
  noStroke();
  frameRate(24);

}

void draw() {
  ;

  if (drawMode == 1 && mousePressed) {
    // Red ellipse mode
    fill(255,0,0, 50);
    ellipse(mouseX, mouseY, 50, 50);
  }

  if (drawMode == 2 && mousePressed) {
    //green ellipse
    fill(0,255,0,50);
    ellipse(mouseX, mouseY, 50, 50);
  }
  if (drawMode == 3 && mousePressed) {
    //blue ellipse
    fill(0,0,255,50);
    ellipse(mouseX, mouseY, 50, 50);
  }
  if (drawMode == 0) {
    fill(255);
    rect(0,0, width,height);
  }
    if (drawMode == 4 && mousePressed) {
    //blue rect
    fill(0,0,255,50);
    rect(mouseX, mouseY, 50, 50);
  }
  if (drawMode == 5 && mousePressed) {
    //green rect
    fill(0,255,0,50);
    rect(mouseX, mouseY, 50, 50);
  }
    if (drawMode == 6 && mousePressed) {
    //red rect
    fill(255,0,0,50);
    rect(mouseX, mouseY, 50, 50);
  }
  }

  //handles keyboard input.
  void keyPressed() {
    //println(key);
    if (key =='1') {
      //if we press 1 a drawmode will change
      drawMode = 1;
    }
    if (key =='2') {
      //if we press 2 a drawMode will change.
      drawMode = 2;
    }
    if (key == '3') {
    drawMode = 3;
    }
    if (key =='0') {
      //if we press 2 a drawMode will change.
      drawMode = 0;
    }
    if (key =='4') {
      //if we press 2 a drawMode will change.
      drawMode = 4;
    }
    if (key =='5') {
      //if we press 2 a drawMode will change.
      drawMode = 5;
    }
    if (key =='6') {
      //if we press 2 a drawMode will change.
      drawMode = 6;
    }
  }