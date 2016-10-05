import ddf.minim.*;
Minim minim; //insatnce in library
AudioPlayer player;

float paddleX;
float ballX;
float ballY;
float yDirection = 5;
float xDirection = 5;
//import processing.sound.*;
//SoundFile file;

void setup() {
  size(800, 600);
  paddleX = 5;
  ballX = 50;
  ballY = height/2;
  
  minim = new Minim (this);
  player = minim.loadFile("pop.mp3");
  player.play();
  
  //file = new SoundFile(this, "sample.mp3");
  //file.play();
  
}

void draw() {
  strokeWeight(0);
  background(0);
  fill(255);
  rectMode(CENTER);
  rect(paddleX, mouseY, 20, 100);
  rect(ballX, ballY, 10, 10);

  ballX += xDirection;
  ballY += yDirection;
  
  if (ballX <10) {
    if (ballY> mouseY -50 && ballY<mouseY) {
      xDirection = -xDirection;
    }
  }
  if (ballX > width ) {
    xDirection = -xDirection;
  }
  if (ballY > height || ballY <0) {
    yDirection = -yDirection;
  }
}
