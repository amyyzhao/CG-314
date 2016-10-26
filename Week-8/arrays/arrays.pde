poop poo1;



float x2;
float y2;
float size;
color theColor = color(255, random(1, 255), 100);

int amount = 1000;


float [] x = new float [amount];
float [] y = new float [amount];
float [] shade = new float [amount];
float [] diameter = new float [amount];
float [] side1 = new float [amount];
float [] side2 = new float [amount];

poop[] poo = new poop[10];
Ball[] myBalls= new Ball[0];// new array of type Ball




void setup () {
  size(1280, 720);
  noStroke();
  poo1 = new poop(width/2, height/2, 50, color(135, 140, 180));
  x2 = width/2;
  y2 = height/2;
  size = 60;

  for (int i = 0; i<x.length; i++) {
    x[i] = random(-100, width);
    y[i] = random(1, height);
    shade[i] = random(100, 220);
    diameter[i] = random(.5, 3);
    side1[i] = random(1, 3);
    side2[i] = random(1, 50);
  }
  for (int i = 0; i<poo.length; i++) {
    float x = random(1, 1280);
    float y = random(100, 800);
    float size = random(-50, 50);
    color theColor = color(random(1, 255), random(1, 255), random(1, 255));
    poo[i] = new poop(x, y, size, theColor);
  }
}
void draw() {
  background(0);
  for (int i = 0; i < myBalls.length; i++) {              // using .length to get the number of items in the array
    myBalls[i].drawBall();                                // using the square brackets [] to get an item from the array
    myBalls[i].randomizePosition();
  }
  for (int i = x.length -1; i>0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  x[0] = mouseX;
  y[0] = mouseY;

  for (int i = 0; i<x.length; i++) {
    fill(i*4);
    ellipse(x[i], y[i], random(.5, 3), random(.5, 3));
  }

  if (mousePressed) {
    for (poop s : poo) {
      s.move();
      for (int i = 0; i<x.length; i++) {
        fill(random(1, 255), random(1, 255), random(1, 255), shade[i]);
        rect(x[i], y[i], side2[i], 
          side1[i]);
        x[i]+= 0.1;
        if (x[i]>width) {
          x[i] = 0;
        }
      }
    }
  } else {
    for (poop s : poo) {
      s.hover();
    }
  }
  for (poop s : poo) {
    s.display();
    for (int i = 0; i<x.length; i++) {
      fill(random(1, 255), random(1, 255), random(1, 255), shade[i]);
      ellipse(x[i], y[i], diameter[i], 
        diameter[i]);
      y[i]+= 0.1;
      if (y[i]>height) {
        y[i] = 0;
      }
    }
  }

}
void mousePressed() {
  Ball temp= new Ball(mouseX, mouseY);
  myBalls =(Ball[])append( myBalls, temp);               // using append() to ad an item to aray
}                                                        // notice that you mention the array twice, once as the array to add too
// and a second time as the result of the operation
class Ball {
  float posX, posY;
  Ball(int x, int y) {
    posX=x;
    posY=y;
  }

  void drawBall() {
    fill(random(mouseX,mouseY), random(mouseY,mouseX), random(1, 255));
    stroke(random(1, 255), random(1, 255), random(1, 255));
    ellipse(posX, posY, 10, 10);   
    for (int i = 0; i < myBalls.length; i++) {
      line (posX, posY, myBalls[i].posX, myBalls[i].posY);
    }
  }
  void randomizePosition() {
    posX+= random(-1, 1);
    posY+= random(-1, 1);
  }
}