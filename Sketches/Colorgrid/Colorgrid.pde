void setup() {
  size (800, 600);
}

void draw() {
  background (255);
  if (mouseX >0 && mouseY > 0) {
    for (int x = 0; x < width; x += mouseX) {
      for (int y = 0; y < height; y += mouseY) {
        float mRed = map(x, 0, width, 0, 255);
        float mBlue = map(y, 0, height, 0, 255);
        fill (mRed, mBlue, 0);
        rect (x, y, mouseX, mouseY);
      }
    }
  }
}