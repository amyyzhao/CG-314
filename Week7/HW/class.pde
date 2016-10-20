poop poo1;
poop poo2;

float x;
float y;
float size;
color theColor = color(255, random(1, 255), 100);

void setup() {
  size(1280, 720);
  poo1 = new poop(width/2, height/2, 50, color(135, 140, 180));
  poo2 = new poop(width/6, height/1.3, 70, color(100, 100, 100));
  x = width/2;
  y = height/2;
  size = 60;
}



void draw() {
  background(0);
  if (keyPressed) {
    poo1.move();
    poo2.move();
  } else {
    poo1.hover();
    poo2.hover();
  }
  poo1.display();
  poo2.display();
}

