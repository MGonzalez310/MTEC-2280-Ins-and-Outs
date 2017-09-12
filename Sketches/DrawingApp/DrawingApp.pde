//global variable goes here. Before set up and draw.
int drawMode= 1;
//draw modes will be:
//1 will be ellipse
//2 will be text

void setup() {
 size(800,800);
 background(255);
}

void draw() {
  fill(random(255),random(255),random(255));
  if(drawMode == 1) {
    //ellipse mode
    ellipse(mouseX,mouseY, 10,10);
  }
  
   if(drawMode == 2) {
    //text mode
    text("Praise the Sun",mouseX,mouseY);
  }
}
  //handles keyboard input.
  void keyPressed(){
   //println(key);
   if (key =='1') {
     //if we press 1 a drawmode will change
     drawMode = 1;
   }
   if (key =='2') {
     //if we press 2 a drawMode will change.
     drawMode = 2;
   }
  }