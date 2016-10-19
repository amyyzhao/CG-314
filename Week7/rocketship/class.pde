Rocketship ship;
Rocketship ship2;

float x;
float y;
float size;
color theColor = color(255, random(1, 255), 100);

void setup() {
  size(1280, 720);
  ship = new Rocketship(width/2, height/2, 50, color(135, 140, 180));
  ship2 = new Rocketship(width/6, height/1.3, 70, color(100, 100, 100));
  x = width/2;
  y = height/2;
  size = 60;
}



void draw() {
  background(0);
  if (keyPressed) {
    ship.move();
    ship2.move();
  } else {
    ship.hover();
    ship2.hover();
  }
  ship.display();
  ship2.display();
}

