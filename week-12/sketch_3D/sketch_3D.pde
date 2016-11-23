float x, y, z;
float rotation = PI/48;
PImage img;
PShape k;

void setup() {
  size(800, 600, P3D);
  x = width/2;
  y = height/2;
  z = 0;
  background(1);
  sphereDetail(40);
  noStroke();
  img=loadImage("galaxy.jpg");
  k = createShape(SPHERE, 100);
  k.setTexture(img);
}

void draw() {
  
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
  translate(0, 0, 0);
  k.rotateY(radians(10));
  shape(k, 0, 0);
  
  
  lights();
  pushMatrix();
  translate(x, y, z);
  noFill();
  stroke(random(100, 255), random(100, 255), random(100, 255));
  sphereDetail(20);
  sphere(100);
  popMatrix();


  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex(   0, 0, 100);
  vertex( 100, -100, -100);
  vertex( 100, 100, -100);
  vertex(   0, 0, 100);


  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex(   0, 0, 100);


  vertex(-100, 100, -100);
  vertex(-100, -100, -100);
  vertex(   0, 0, 100);


  endShape();


  rotation+=radians(0.5);
}