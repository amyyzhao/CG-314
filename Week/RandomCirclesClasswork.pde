//int draw loop
//do something => mouse pressed
//classes

int circleWidth;
int circleHeight;

void setup() {
  //background(mouseX,0,mouseY);
  size(1280,720);
  
  noFill();
  strokeWeight(1);
  stroke(0);
}
void draw() {
  
  background(mouseX,mouseY,0);
  
  //ellipse(mouseX,mouseY,circleWidth,circleHeight);
  //for (int i = 0; i<200; i++) {
  //ellipse(width/2,height/2,circleWidth,circleHeight);
  //circleWidth = circleWidth + 5;
  //circleHeight = circleHeight + 5; //circle hypno patern
  for(int y = 0; y<=height; y+=40){
    for(int x = 0; x<+width; x+=40){ //circle pattern loop
      float r = random(1,800);
      fill(mouseX, mouseY, r);
      ellipse(x,r,40,40);
  }
  //circleWidth = 1;
  //circleHeight = 1; //circle hypno pattern
  }}
  
  
