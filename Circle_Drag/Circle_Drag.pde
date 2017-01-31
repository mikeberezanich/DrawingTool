void setup() {
  background(0);
  size(640, 480);
}

void draw() {
  changeColor();
  
  if (keyPressed && key == ENTER || key == RETURN) {
    save("cd.jpg");
  }
}

void mouseDragged() {
  float circleSize = random(30);
  ellipse(mouseX, mouseY, circleSize, circleSize);
}

void changeColor() {
  if (keyPressed) {
     if (key == 'c') {
        fill(random(255), random(255), random(255));
     }
     if (key == 's') {
        stroke(random(255), random(255), random(255));
     }
  }
}