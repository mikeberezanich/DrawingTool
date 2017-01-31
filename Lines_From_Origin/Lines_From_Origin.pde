int horizOrigin = 320;
int vertOrigin = 240;
int updateAmount = 5;
int colorMode = 0;

void setup() {
  background(0);
  size(640, 480);
}

void draw() {
  if (colorMode == 0) {
    stroke(random(255), random(255), random(255));
  } else {
    stroke(random(255));
  }
  updateOrigin();
  
  if (keyPressed && key == ENTER || key == RETURN) {
    save("lfo.jpg");
  }
}

void mouseMoved() {
  line(horizOrigin, vertOrigin, mouseX, mouseY);
}

void updateOrigin() {
  
  if (keyPressed) {
    switch(key) {
      case 'w':
        vertOrigin -= updateAmount;
        break;
      case 's':
        vertOrigin += updateAmount;
        break;
      case 'a':
        horizOrigin -= updateAmount;
        break;
      case 'd':
        horizOrigin += updateAmount;
        break;
      case '0':
        colorMode = 0;
        break;
      case '1':
        colorMode = 1;
        break;
    }
  }
   
    
}