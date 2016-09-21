PFont sans;
PImage nico;

int a = 10; 
int b = 10; 

int tool = 0;


float x, y;  //FLUIDITY HATCHING TOOL
float easing = 10; //CHANGING EASE = LARGE HATCHING/ SMALL DOTS
float tempAngle =  radians(45); //constant rotation


void setup() {  //HOVER BUTTONS
  background(255);
  size(1280, 720);
}


void spray() {
  float tempR = map(mouseX, 1, width, 1, 255);
  float tempG = map(mouseY, 1, height, 1, 255);

  for (int i =0; i<4; i++) {
    stroke(random(1, 255), random(1, 255), random(1, 255));
    fill(tempR, tempG, random(1, 255));
    ellipse(mouseX+random(-10, 10), mouseY-random(-10, 10), 5, 5);
  }
}


void lines() {
  if (mousePressed) {
    stroke(random(1, 255), random(1, 255), random(1, 255));
    translate(mouseX, mouseY);
    rotate(radians(tempAngle));
    fill(255, 0, 0);
    rect(0, 0, 10, 10);
    tempAngle += random(mouseX, mouseY);
    scale(random(1, 2));
    rect(0, 0, random(1, 10), random(1, 10));

    //PUSH POP
    pushMatrix();
    float tempAngle1 = map (mouseX, 0, height, 0, 360);  //mirrors
    translate(mouseY, mouseX);
    rotate(radians(tempAngle1));
    fill(random(1, 255), 0, 0);
    triangle(-25, -10, -50, -20, -30, -30);
    popMatrix(); 

    pushMatrix();
    float tempAngle2 = map (mouseY, 0, width, 0, 360);
    translate(mouseX, mouseY);
    rotate(radians(tempAngle2));
    fill(0, random(1, 255), 0);
    rect(-25, -25, 10, 10);
    fill(0, 0, random(1, 255));
    ellipse(100, 100, 10, 10);
    popMatrix();
  } else {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void hatching() {
  if (mousePressed) {
    float targetX = mouseX;
    float targetY = mouseY;
    x+=(targetX-x)*easing;
    y+=(targetY-y)*easing;
    stroke(random(1, 255), random(1, 255), random(1, 255));
    line(1280, 720, pmouseX, pmouseY);
  } else {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}


void draw() {
  nico = loadImage("nico.gif");
  sans = createFont("LDFComicSans.ttf", 60);
  textFont(sans);
  textSize(10);
  fill(0);
  text("KAWAII", 10, 670);
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
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 660 && mouseY < 720) { 
    tool =5;
  }

  if (mousePressed) {
    if (tool == 1) {
      fill(255, 100, 0);
      rect(a, b, 60, 60);
      spray();
    } else if (tool == 2) {
      fill(0, 255, 150);
      rect(a, b+100, 60, 60);
      lines();
    } else if (tool == 3) {
      fill(100, 0, 255);
      rect(a, b+200, 60, 60);
      hatching();
    } else if (tool == 4 && mousePressed) {
      clear();
      background (255);
      strokeWeight(1);
    } else if (tool == 5 && mousePressed) {
      for (int i = 0; i<height; i+=200) {
        for (int j = 0; j<width; j+=300) {
          textSize(50);
          fill(random(100, 255), 0, 150);
          text("CLICK DA KAWAII", 90, 600);
          image(nico, float(j), float(i), 500, 280);
          image(nico, random(60, 100), random(60, 100), 500, 280);
          image(nico, 500, 480);
          textSize(100);
              fill(random(1,255),random(1,50),random(1,255));
          text("SHIT", random(150, 250), random(410, 500));
        }
      }
    }
  }
}