void setup() {
  size(800,800);
  stroke (90,125,200);
  strokeWeight(4);
}
    
void draw(){
 background(0);
 line(0,height/2,mouseX,mouseY);
 line(width/2,0,mouseX,mouseY);
 line(width/2,800,mouseX,mouseY);
 line(800,height/2,mouseX,mouseY);
 line(0,800,mouseX,mouseY);
 line(800,0,mouseX,mouseY);
 line(0,0,mouseX,mouseY);
 line(800,800,mouseX,mouseY);
 stroke(122);
 ellipse(800,800,mouseX,mouseY);
 ellipse(0,0,mouseX,mouseY);
 ellipse(800,0,mouseX,mouseY);
 ellipse(0,800,mouseX,mouseY);
 ellipse(8,height/2,mouseX,mouseY);
 ellipse(width/2,0,mouseX,mouseY);
 ellipse(800,height/2,mouseX,mouseY);
 ellipse(width/2,800,mouseX,mouseY);
}