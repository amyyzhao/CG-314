//Fonts will be written in :

String s = "hello world!";
println(s.length());
float xPos = 10;
size(400, 400);
background(0);
for (int i = 0; i<s.length(); i++) {
  char c = s.charAt(i);
  fill(random(100, 255));
  textSize(random(12, 48));
  text(c, xPos, height/2);
  xPos += textWidth(c);
}

//size(400, 400);
//PFont f = createFont("GillSans", 64);
//textFont(f);
//textAlign(CENTER);
//text("Hi Work", width/2, height/2);
