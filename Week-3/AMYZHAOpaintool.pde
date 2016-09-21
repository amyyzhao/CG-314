int a = 10; 
int b = 10; 

int tool = 0;


float theDistance; //LINE STROKES
float x,y;  //FLUIDITY HATCHING TOOL
float easing = 10; //CHANGING EASE = LARGE HATCHING/ SMALL DOTS


void setup(){  //HOVER BUTTONS
  background(255);
  size(1280,720);
}


void spray() {
  float tempR = map(mouseX,1,width,1,255);
  float tempG = map(mouseY,1,height,1,255);
  
  for (int i =0; i<4; i++){
    fill(tempR,tempG,random(1,255));
    ellipse(mouseX+random(-10,10),mouseY-random(-10,10),5,5);

  }
}


void lines(){
  if (mousePressed){
    theDistance = dist(mouseX,mouseY,pmouseX,pmouseY); //adds strokeWeight
    strokeWeight(theDistance);
    line(mouseX,mouseY,pmouseX,pmouseY);
  } else {
    line(mouseX,mouseY,pmouseX,pmouseY);
}}

void hatching(){
  if (mousePressed){
    float targetX = mouseX;
    float targetY = mouseY;
    x+=(targetX-x)*easing;
    y+=(targetY-y)*easing;
    line(1280,720,pmouseX,pmouseY);

  } else {
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}


void draw() {
  fill(255,0,0);
  rect(a,b,60,60);
  fill(0,255,0);
  rect(a,b+100,60,60);
  fill(0,0,255);
  rect(a,b+200,60,60);
  fill(255);
  rect(a,b+500,60,60);
  strokeWeight(1);
  
  if(mouseX>10 && mouseX <70 && mouseY> 10 && mouseY<70){
    tool =1;
  }
  else if(mouseX > 10 && mouseX < 70 && mouseY> 100 && mouseY < 150) { 
  tool =2;
  }
  else if (mouseX > 10 && mouseX < 70 && mouseY> 180 && mouseY < 300) { 
  tool =3;
  }
  else if (mouseX > 10 && mouseX < 70 && mouseY> 500 && mouseY < 560) { 
  tool =4;
  }


  if (mousePressed) {
    if (tool == 1) {
      fill(255,100,0);
      rect(a,b,60,60);
      spray();
      
    } else if (tool == 2) {
      fill(0,255,150);
      rect(a,b+100,60,60);
      lines();
      
    } else if (tool == 3) {
      fill(100,0,255);
      rect(a,b+200,60,60);
      hatching();
    }
      else if (tool == 4 && mousePressed) {
      clear();
      background (255);
      strokeWeight(1);
  }
  }
}
