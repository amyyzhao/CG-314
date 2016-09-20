//https://processing.org/examples/rollover.html

int a = 10; 
int b = 10; 


float theDistance; //LINE STROKES
float x,y;  //FLUIDITY HATCHING TOOL
float easing = 10; //CHANGING EASE = LARGE HATCHING/ SMALL DOTS


void setup(){  //HOVER BUTTONS
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
    line(x,y,pmouseX,pmouseY);
} else {
    line(mouseX,mouseY,pmouseX,pmouseY);
  }
}

void butt1(){
  fill(255,0,0);
  rect(a,b,60,60);
  if (mousePressed==true){
    if(mouseX>10 && mouseX <70 && mouseY> 10 && mouseY<70){
      fill(0,255,0);
      rect(a,b,60,60);}
      spray();

    }}
    
void butt2(){
  fill(255,0,0);
  rect(a,b+100,60,60);
  if (mousePressed==true){
    if(mouseX>b+100 && mouseX <70 && mouseY> a && mouseY<70){
      fill(0,255,0);
      rect(a,b+100,60,60);}
      lines();

    }}

void butt3(){
  fill(255,0,0);
  rect(a,b+200,60,60);
  if (mousePressed==true){
    if(mouseX>b+200 && mouseX <70 && mouseY>a && mouseY<70){
      fill(0,255,0);
      rect(a,b+200,60,60);}
      hatching();

    }}
    
    

void draw(){
  butt1();
  butt2();
  butt3();

}

