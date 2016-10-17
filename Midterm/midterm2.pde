int a = 10; 
int b = 10; 
int robox = 600;
int roboy = 200;

int tool = 0;

float angle = 0.0;
float yOffset;
float y2Offset;
float xOffset;
float scalar2 = 200;

float scalar = 80;
float speed = 0.05;

float x;
float y;
float diameter = 100;
float radius = diameter/2;
float xDirection = 50;
float yDirection = 50;
float x1 = 300;

float tempAngle =  radians(45); //constant rotation
float tempAngle2 =  radians(90);


//FUNCTIONS
void dead() {
  strokeWeight(5);
  stroke(0);
  //legs
  fill(150, 50, 100);
  rotate(radians(tempAngle2));
  rect(robox+50, roboy+150+200, 50, 90);
  rotate(radians(tempAngle2));
  rect(robox+50, roboy+240+200, 90, 20);
  fill(100, 1000, 1000);
  rotate(radians(tempAngle2));
  rect(robox, roboy+150+200, 50, 90);
  rotate(radians(tempAngle2));
  rect(robox, roboy+240+200, 90, 20);
  //body
  fill(100, 1000, 1000);
  rotate(radians(tempAngle2));
  rect(robox-50, roboy-50+200, 100, 250);
  fill(150, 50, 100);
  rotate(radians(tempAngle2));
  rect(robox, roboy-50+200, 170, 250);
  //arm1
  fill(100, 1000, 1000);
  rotate(radians(tempAngle2));
  rect(robox-40, roboy+200, 30, 100);
  //head
  fill(100, 1000, 1000);
  rotate(radians(tempAngle2));
  rect(pmouseX, pmouseY-150+200, 100, 100);
  fill(150, 50, 100);
  rotate(radians(tempAngle2));
  rect(pmouseX+30, pmouseY-150+200, 100, 100);
  //face
  fill(random(100, 255), random(100, 255), random(100, 255));
  rotate(radians(tempAngle2));
  ellipse(pmouseX+60, pmouseY-110+200, 20, 20);
  rotate(radians(tempAngle2));
  ellipse(pmouseX+110, pmouseY-110+200, 20, 20);
  rotate(radians(tempAngle2));
  rect(pmouseX+60, pmouseY-80+200, 50, 10);
  rotate(radians(tempAngle2));
  ellipse(pmouseX, pmouseY, 20, 20);
}
void bounce() {
  strokeWeight(5);
  stroke(0);
  //head
  rotate(radians(tempAngle));
  fill(100, 1000, 1000);
  rect(x, y-150+200, 100, 100);
  rotate(radians(tempAngle));
  fill(150, 50, 100);
  rect(x+30, y-150+200, 100, 100);
  //face
  rotate(radians(tempAngle));
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(x+60, y-110+200, 20, 20);
  rotate(radians(tempAngle));
  ellipse(x+110, y-110+200, 20, 20);
  rotate(radians(tempAngle));
  rect(x+60, y-80+200, 50, 10);

  x = x + xDirection;
  y=y + yDirection;
  if (x > width - radius || x < radius) {
    xDirection = -xDirection;
  }
  if (y > height - radius || y < radius) {
    yDirection = -yDirection;
  }
}
void dance() {
  float xy = xOffset = sin(angle) * scalar;
  float yx = y2Offset = cos(angle) * scalar;
  float y1 = yOffset + sin(angle) * scalar;
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(xy+random(1, 1280), yx+random(1, 720), 40, 40);
  ellipse(xy+random(1, 1280), yx+random(1, 720), xy, yx);
  strokeWeight(5);
  stroke(random(0, 100), random(0, 100), random(0, 100));
  fill(random(100, 255), random(100, 255), random(100, 255));
  //legs
  triangle(mouseX-400+random(1, 50), mouseY+800+random(1, 50), 400+random(1, 50), y1+250+random(1, 50), 500+random(1, 50), y1+250+random(1, 50));
  triangle(mouseX+random(1, 50), mouseY+800+random(1, 50), 650+random(1, 50), y1+250+random(1, 50), 750+random(1, 50), y1+250+random(1, 50));
  //body
  rect(400+random(1, 50), y1+random(1, 50), 350, 250);
  //head
  rect(500+random(1, 50), y1-150+random(1, 50), 150, 150);
  //face
  ellipse(520+random(1, 50), y1-100+random(1, 50), 30, 30);
  ellipse(600+random(1, 50), y1-100+random(1, 50), 30, 30);
  rect(530+random(1, 50), y1-50+random(1, 50), 70, 20);
  ellipse(xy+robox+random(1, 50), yx+roboy+random(1, 50), 40, 40);
  //arms
  triangle(mouseX-400+random(1, 50), mouseY+random(1, 50), 400+random(1, 50), y1+random(1, 50), 400+random(1, 50), y1+100+random(1, 50));
  triangle(mouseX+random(1, 50), mouseY+random(1, 50), 750+random(1, 50), y1+random(1, 50), 750+random(1, 50), y1+100+random(1, 50));
}

void stand() {
  strokeWeight(5);
  stroke(0);
  //arm2
  fill(150, 50, 100);
  rect(robox+160, roboy+200, 100, 30);
  //legs
  fill(150, 50, 100);
  rect(robox+50, roboy+150+200, 50, 90);
  rect(robox+50, roboy+240+200, 90, 20);
  fill(100, 1000, 1000);
  rect(robox, roboy+150+200, 50, 90);
  rect(robox, roboy+240+200, 90, 20);
  //body
  fill(100, 1000, 1000);
  rect(robox-50, roboy-50+200, 100, 250);
  fill(150, 50, 100);
  rect(robox, roboy-50+200, 170, 250);
  //arm1
  fill(100, 1000, 1000);
  rect(robox-120, roboy+200, 100, 30);
  //head
  fill(100, 1000, 1000);
  rect(robox, roboy-150+200, 100, 100);
  fill(150, 50, 100);
  rect(robox+30, roboy-150+200, 100, 100);
  //face
  fill(255);
  ellipse(robox+60, roboy-110+200, 20, 20);
  ellipse(robox+110, roboy-110+200, 20, 20);
  rect(robox+60, roboy-80+200, 50, 10);
  //ball
  ellipse(roboy+470, roboy, 20, 20);
}
void jump() {
  float xy = xOffset = sin(angle) * scalar;
  float yx = y2Offset = cos(angle) * scalar;
  float y1 = yOffset + sin(angle) * scalar;
  float y2 = yOffset + sin(angle + 0.2) * scalar;
  strokeWeight(5);
  stroke(0);
  //arm2
  fill(150, 50, 100);
  rect(robox+160, y1, 100, 30);
  //legs
  fill(150, 50, 100);
  rect(robox+50, y2+150, 50, 90);
  rect(robox+50, y2+240, 90, 20);
  fill(100, 1000, 1000);
  rect(robox, y2+150, 50, 90);
  rect(robox, y2+240, 90, 20);
  //body
  fill(100, 1000, 1000);
  rect(robox-50, y1-50, 100, 250);
  fill(150, 50, 100);
  rect(robox, y1-50, 170, 250);
  //arm1
  fill(100, 1000, 1000);
  rect(robox-120, y1, 100, 30);
  //head
  fill(100, 1000, 1000);
  rect(robox, y1-150, 100, 100);
  fill(150, 50, 100);
  rect(robox+30, y1-150, 100, 100);
  //face
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(robox+60, y1-110, 20, 20);
  ellipse(robox+110, y1-110, 20, 20);
  rect(robox+60, y1-80, 50, 10);
  //ball
  ellipse(xy+700, yx+y2-150, 20, 20);
}

void page1() {
  bg();
  float xy = xOffset = sin(angle) * scalar;
  float yx = y2Offset = cos(angle) * scalar;

  float y1 = yOffset + sin(angle) * scalar;
  float y2 = yOffset + sin(angle + 0.4) * scalar;
  float y3 = yOffset + sin(angle + 0.8) * scalar;
  float y4 = yOffset + sin(angle + 1.2) * scalar;
  float y5 = yOffset + sin(angle + 1.6) * scalar;
  float y6 = yOffset + sin(angle + 2.1) * scalar;

  //robo
  float y7 = yOffset + sin(angle + 2.1) * scalar;
  float y8 = yOffset + sin(angle + 2.7) * scalar;

  //ball
  strokeWeight(3);
  stroke(random(100, 255), random(100, 255), random(100, 255));
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(x1 - 60, y1, 10, 10);
  ellipse(x1, y2, 20, 20);
  ellipse(x1 + 60, y3, 30, 30);
  ellipse(x1 + 120, y4, 40, 40);
  ellipse(x1 + 180, y5, 50, 50);
  ellipse(x1 + 240, y6, 60, 60);

  //robo
  strokeWeight(5);
  stroke(0);

  //legs
  fill(150, 50, 100);
  rect(x1 + 200, y8+100, 100, 50);
  rect(x1 + 200, y8+100, 20, 70);
  fill(100, 1000, 1000);
  rect(x1 + 200, y8+50, 100, 50);
  rect(x1 + 200, y8+50, 20, 70);
  //body
  fill(150, 50, 100);
  rect(x1 + 300, y7, 300, 200);
  fill(100, 1000, 1000);
  rect(x1 + 300, y7, 300, 50);
  //arm2
  fill(100, 1000, 1000);
  rect(x1 + 450, y7-20, 150, 50);
  //head
  fill(150, 50, 100);
  rect(xy+900, yx+400, 100, 140);
  fill(100, 1000, 1000);
  rect(xy+900, yx+400, 100, 40);

  //face
  fill(random(100, 255), random(100, 255), random(100, 255));
  ellipse(xy+960, yx+465, 20, 20);
  ellipse(xy+960, yx+515, 20, 20);
  rect(xy+910, yx+465, 20, 50);
  angle+=speed;

  //text
  textSize(100);
  text("The Robot Dance", 270, 200);
}


void page2() {
  bg();
  stand();
  //text
  fill(0);
  textSize(50);
  text("This is Robo-Boy.", 430, 100);
}


void page3() {
  bg();
  jump();

  //text
  fill(0);
  textSize(50);
  text("He's been invited to a Dance Party!", 270, 100);
}


void page4() {
  bg();
  stand();
  float xy = xOffset = sin(angle) * scalar;
  float yx = y2Offset = cos(angle) * scalar;
  float y2 = yOffset + sin(angle + 0.2) * scalar;
  //text
  fill(0);
  textSize(50);
  text("Can he dance?", 470, 100);
  textSize(100);
  text("?", xy+650, yx+y2);
}


void page5() {
  float y2 = yOffset + sin(angle + 0.2) * scalar;
  clear();
  background(255);
  fill(0);
  rect(90, b, 1170, 690);
  stroke(100, 50, 100, 100);
  strokeWeight(1);
  dance();

  //text
  textSize(50);
  text("You betcha he can dance!", y2, y2-200);
}


void page6() {
  bg();
  bounce();

  //text
  fill(0);
  textSize(50);
  text("Oh wait, nevermind.", 430, 100);
}


void page7() {
  bg();
  rotate(radians(tempAngle2));
  dead();

  //text
  fill(0);
  textSize(100);
  text("The End", 430, 200);
}


void bg() {
  clear();
  background(255);
  fill(255);
  rect(90, b, 1170, 690);
  stroke(100, 50, 100, 100);
  strokeWeight(1);
}
void pagetext() {
  stroke(100, 50, 100, 100);
  strokeWeight(1);
  fill(255);
  //#1
  strokeWeight(1);
  rect(a, b, 60, 60);
  //#2
  strokeWeight(1);
  rect(a, b+100, 60, 60);
  //#3
  strokeWeight(1);  
  rect(a, b+200, 60, 60);
  //#4
  strokeWeight(1);
  rect(a, b+300, 60, 60);
  //#5
  strokeWeight(1);
  rect(a, b+400, 60, 60);
  //#6
  strokeWeight(1);
  rect(a, b+500, 60, 60);
  //#7
  strokeWeight(1);
  rect(a, b+600, 60, 60);
  //text
  textSize(25);
  fill(mouseY-120, 100, 200);
  text("1", 32, 50);
  text("2", 32, 150);
  text("3", 32, 250);
  text("4", 32, 350);
  text("5", 32, 450);
  text("6", 32, 550);
  text("7", 32, 650);
  textSize(14);
  text("Amy Zhao", 10, 710);
}


void setup() {  
  background(255);
  size(1280, 720);
  yOffset = height/2;
  y2Offset = height/2;
  xOffset = width/2;
}
void draw() { 
  page1();
  pagetext();

  if (mouseX>10 && mouseX <70 && mouseY> 10 && mouseY<70) {
    tool =1;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 100 && mouseY < 150) { 
    tool =2;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 180 && mouseY < 270) { 
    tool =3;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 300 && mouseY < 390) { 
    tool =4;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 410 && mouseY < 470) { 
    tool =5;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 500 && mouseY < 560) { 
    tool =6;
  } else if (mouseX > 10 && mouseX < 70 && mouseY> 590 && mouseY < 670) { 
    tool =7;
  }
  mouseClicked();
}

void mouseClicked() {
  if (tool == 1) {
    page1();

    //#1
    strokeWeight(5);
    fill(255);
    rect(a, b, 60, 60);

    //text
    pagetext();
  } else if (tool == 2) {
    page2();

    //#2
    strokeWeight(5);
    fill(255);
    rect(a, b+100, 60, 60);

    //text
    pagetext();
  } else if (tool == 3) {
    page3();

    //#3
    strokeWeight(5);
    fill(255);
    rect(a, b+200, 60, 60);

    //text
    pagetext();
  } else if (tool == 4) {
    page4();

    //#4
    strokeWeight(5);
    fill(255);
    rect(a, b+300, 60, 60);

    //text
    pagetext();
  } else if (tool == 5) {
    page5();

    //#5
    strokeWeight(5);
    fill(255);
    rect(a, b+400, 60, 60);

    //text
    pagetext();
  } else if (tool == 6) {
    page6();

    //#6
    strokeWeight(5);
    fill(255);
    rect(a, b+500, 60, 60);

    //text
    pagetext();
  } else if (tool == 7) {
    page7();

    //#7
    strokeWeight(5);
    fill(255);
    rect(a, b+600, 60, 60);

    //text
    pagetext();
  }
}
