size(800, 600);

strokeWeight(2);
stroke(0);

//for loop has 4 parts.
//initialization   condition     increment
for (int i = 0; i<width; i ++) {
  float mappedColor = map(i,0,width, 0, 255);
  stroke(mappedColor,0,0);
  line(i, 0, i, height);
}

//for (int b = 0; b <height; b += 10) {
  //line(0, b, width, b);
//}