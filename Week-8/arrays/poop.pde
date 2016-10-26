class poop {
  float x;
  float y;
  float size;
  color theColor;

  poop(float tempX, float tempY, float tempSize, color tempColor) {
    x = tempX;
    y = tempY;
    size= tempSize;
    theColor = tempColor;
  }
  void display() {
    noStroke();
    //fill(160, 100, 0);
    fill(theColor+200);
    ellipse(x, y, size+300, size+100);
    ellipse(x, y-70, size+200, size+50);
    ellipse(x, y-120, size+100, size+25);
    ellipse(x, y-150, size+25, size+15);
    ellipse(x, y-190, size-20, size-20);
    fill(theColor);
    ellipse(x-50, y-80, 20, 20);
    ellipse(x+50, y-80, 20, 20);
    rect(x-50, y-20, 100, 10);
  }
  void hover() {
    x+=random(-5, 5);
    y+=random(-5, 5);
  }
  void move() {
    for (int i = 0; i <20; i++) {
      x+=20;
      if (x>width+size) {
        x=-size;
      }
      //fill(255);
      //rect(random(1, 1280), random(1, 720), 100, 5);
      //rect(random(1, 1280), random(1, 720), 100, 5);
    }
  }
}