float x, y, z;
float rotation = PI/48;
//code courtesy of Kevin Steele
float direction = 5;
float distance;
float myHeight;


void setup() {
  size(1280, 720, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  background(1);
  sphereDetail(40);
  noStroke();

  myHeight = height/2;
  distance = (height/2)/tan(PI/6);
}

void draw() {
  background(0);
  keys();
  camera(myHeight, myHeight, (height/2) / tan(PI/6), distance, distance, 0, 0, 0, 1);
  translate(x, y, z);
  rotateX(rotation);
  rectMode(CENTER);
  rotation+= PI/48;
  stroke(random(100, 255), random(100, 255), random(100, 255));
  noFill();
  lights();
  box(100);
  ambientLight(255, 1, 10);
  camera(mouseX, mouseX, (height/2) / tan(PI/6), mouseY, mouseY, 2, 0, 0, 1);


  rotateX(rotation);
  rotateY(rotation/2);
  rotateZ(rotation*0.5);
  translate(x, y, z);


  lights();
  pushMatrix();
  translate(x, y, z);
  noFill();
  stroke(random(100, 255), random(100, 255), random(100, 255));
  sphereDetail(20);
  sphere(100);
  popMatrix();

  rotation+=radians(0.5);
}

void keys() {
  if (keyPressed ) { 
    if (key ==CODED) {
      if (keyCode == UP) {
        distance+=direction;
      } else if (keyCode == DOWN) { 
        distance-=direction;
      } else if (keyCode == LEFT) { 
        myHeight-=direction;
      } else if (keyCode == RIGHT) { 
        myHeight+=direction;
      }
    }
  }
}
