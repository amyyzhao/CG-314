int x = 200; //x coord
int y = 200; //y coord

void setup() {
  size(1280,720);
  ellipseMode(RADIUS);
  
  noFill();
  strokeWeight(0);
  stroke(0);
}

void draw() {
  //background(mouseX,0,mouseY);
  stroke(mouseY,mouseX,200);
  strokeWeight(5);
  //BODY
  fill(100,mouseX,mouseY);
  rect(400,300,350,400);
  //HEAD
  rect(520,200,150,150);
  //ROD
  rect(590,100,10,100);
  //LEGS
  fill(200,mouseX,mouseY);
  rect(450,700,50,300);
  rect(700,700,50,300);
  //ARMS
  triangle(mouseX-400,mouseY,400,301,400,400);
  triangle(mouseX,mouseY,750,301,750,400);
  


  for(int y = 0; y<=height; y+=40){
    for(int x = 0; x<+width; x+=40){ 
      float r = random(1,400);
      //Pattern
      strokeWeight(0);
      fill(mouseX, mouseY, r,50);
      ellipse(x,y,40,40);
      
      //Face
      fill(mouseY,r,mouseX);
      ellipse(550,250,20,20);
      ellipse(640,250,20,20);
      rect(555,300,80,20);
      
      //Alarm
      fill(r,mouseY,mouseX);
      ellipse(595,100,15,15);  
      
      //Text DANCE ROBO
      noFill();
      stroke(mouseX,mouseY,r);
      strokeWeight(10);
      //D  
      line(50,50,50,150);
      line(50,50,200,100);
      line(50,150,200,100);
      //A  
      line(300,50,250,150);
      line(300,50,350,150);
      //N  
      line(450,50,450,150);
      line(450,50,550,150);
      line(550,50,550,150);
      //C
      arc(750, 100, 100, 50, PI / 2, 3 * PI / 2);
      //E
      line(850,50,850,150);
      line(850,50,950,50);
      line(850,100,950,100);
      line(850,150, 950,150);
      //R
      line(850,300,850,450);
      line(850,300,900,350);
      line(850,400,900,350);
      line(850,400,900,450);
      //O
      ellipse(960,380,50,50);
      //B
      line(1025,300,1025,450);
      line(1025,300,1075,350);
      line(1075,350,1025,375);
      line(1025,375,1075,400);
      line(1075,400,1025,450);
      //O
      ellipse(1140,380,50,50);
      
      
  }
  }}
