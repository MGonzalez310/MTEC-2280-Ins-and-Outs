void setup() {
size(800,800);
frameRate(10);
}

void draw() {
  if (mouseX > width/2) {
   background(random(255),0,0); 
  } else {
    background(0,random(255),0);
  //else..the only other option
  }
  line(width/2,0,width/2,height);
  
}