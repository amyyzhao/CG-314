//int draw loop
//do something => mouse pressed
//classes

int circleWidth;
int circleHeight;

void setup() {
  //background(mouseX,0,mouseY);
  size(1920,1080);
  circleWidth = 1;
  circleHeight = 1;
  
  noFill();
  strokeWeight(1);
  stroke(0);
}
void draw() {
  //fill(mouseX, 0, mouseY);
  //ellipse(mouseX,mouseY,circleWidth,circleHeight);
  ellipse(width/2,height/2,circleWidth,circleHeight);
  circleWidth = circleWidth + 5;
  circleHeight = circleHeight + 5;
}
