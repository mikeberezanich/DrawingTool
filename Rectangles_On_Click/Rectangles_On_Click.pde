int lastVertexX = 0;
int lastVertexY = 0;

void setup() {
  background(0);
  size(640, 480);
}

void draw() {
  stroke(127, 127, 127);
  strokeWeight(5 * sin(random(PI)));
  
  if (keyPressed && key == ENTER || key == RETURN) {
    save("roc.jpg");
  }
}

void mouseClicked() {
  float rectWidth;
  float rectHeight;
  
  rectWidth = mouseX - lastVertexX;
  rectHeight = mouseY - lastVertexY;
  rect(lastVertexX, lastVertexY, rectWidth, rectHeight);
  lastVertexX = mouseX;
  lastVertexY = mouseY;
}