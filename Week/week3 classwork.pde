////making own photoshop

//float theDistance; //LINE STROKES

//void setup() {
//  size(500,500);
//  strokeWeight(3);
//  stroke(255,0,0);
//}

//void draw(){
//  theDistance = dist(mouseX,mouseY,pmouseX,pmouseY); //adds strokeWeight
//  strokeWeight(theDistance);
//  line(mouseX,mouseY,pmouseX,pmouseY);
//}







//float x,y;  //FLUIDITY HATCHING TOOL
//float easing = 10; //CHANGING EASE = LARGE HATCHING/ SMALL DOTS
//void setup(){
//  size(500,500);
//}
//void draw(){
//  if (mousePressed){
//  float targetX = mouseX;
//  float targetY = mouseY;
//  x+=(targetX-x)*easing;
//  y+=(targetY-y)*easing;
//  line(x,y,pmouseX,pmouseY);
//} else {
//  line(mouseX,mouseY,pmouseX,pmouseY);
//  }
//}






//float x,y;
//float easing = 10;
//void setup();{
  //size(640,480);
  //strokeWeight(3);
  //stroke(255,0,0);



//}
//void draw(){  //CONDITIONALS
//  if (mousePressed==true){
//    stroke(0,255,0);
//    line(mouseX,mouseY,pmouseX,pmouseY);
//} else {
//  stroke(0,0,255);
//  line(mouseX,mouseY,pmouseX,pmouseY);
//  }}





//void draw(){  //MORE CONDITIONALS
//  if (mouseX >480){
//    stroke (0,255,0);
//  } else if (mouseX > 320) {
//    stroke(255,255,0);
//  } else if (mouseX > 200) {
//    stroke(255,0,255);
//  } else {
//    line (mouseX,mouseY,pmouseX,pmouseY);
//}line (mouseX,mouseY,pmouseX,pmouseY);}



//void setup(){  //HOVER BUTTONS
//  size(1280,720);
//}
//void draw(){
//  fill(255,0,0);
//  rect(10,10,60,60);
//  if(mouseX>10 && mouseX <70 && mouseY> 10 && mouseY<70){
//    fill(0,255,0);
//    rect(10,10,60,60);
//}}


////SPRAY TOOL

//void setup() {
//  size(640, 360);
//  noStroke();
//}

//void draw() {
//  float tempR = map(mouseX,1,width,1,255);
//  float tempG = map(mouseY,1,height,1,255);
  
//  for (int i =0; i<4; i++){
//    fill(tempR,tempG,random(1,255));
//    ellipse(mouseX+random(-10,10),mouseY-random(-10,10),5,5);
//  }
//}
