int a = 10; 
int b = 10; 

int tool = 0;
void setup() {  
  background(255);
  size(1280, 720);
}

void draw() {
  fill(255, 0, 0);
  rect(a, b, 60, 60);
  fill(0, 255, 0);
  rect(a, b+100, 60, 60);
  fill(0, 0, 255);
  rect(a, b+200, 60, 60);
  fill(255);
  rect(a, b+500, 60, 60);
  strokeWeight(1);

  if (mouseX>10 && mouseX <70 && mouseY> 10 && mouseY<70) {
    tool =1;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 100 && mouseY < 150) { 
    tool =2;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 180 && mouseY < 300) { 
    tool =3;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 500 && mouseY < 560) { 
    tool =4;
  }


  if (mousePressed) {
    if (tool == 1) {
      fill(255, 100, 0);
      rect(a, b, 60, 60);
      clear();
      background(255);
      ellipse(400, 400, 20, 20);
    } else if (tool == 2) {
      fill(0, 255, 150);
      rect(a, b+100, 60, 60);
      clear();
      background(255);
      ellipse(400, 400, 40, 40);
    } else if (tool == 3) {
      fill(100, 0, 255);
      rect(a, b+200, 60, 60);
      clear();
      background(255);
      ellipse(400, 400, 60, 60);
    } else if (tool == 4) {
      clear();
      fill(255);
      rect(a, b+500, 60, 60);
      clear();
      background(255);
      ellipse(400, 400,80, 80);
    }
  }
}
