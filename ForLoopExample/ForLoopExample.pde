size(800, 800);

noFill();
stroke(0);

//for loop has 4 parts.
//initialization   condition     increment
for (int i = 0;    i<5000;       i ++) {
  float x = random(width); 
  float y = random(height); 
  ellipse (x, y, 10, 10);
}