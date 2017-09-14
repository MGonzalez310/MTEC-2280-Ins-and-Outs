float r;
float g;
float b;

void setup() {
  size(600, 600);
  background(0);
  r = random(255);
  g = random(255);
  b = random(255);
}

void draw() {
  stroke(r, g, b);
  background(0);
  if (mouseY >= height/2) {
    line(random(width), random(height), random(width), random(height));
    r = random(255);
    g = random(255);
    b = random(255);
  }
}