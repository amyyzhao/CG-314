import processing.video.*;
Capture video;

float factor = 1;

void setup() {
  size (640, 480); //standard definition
  video = new Capture(this, 640, 480);
  video.start();
}

void draw() {
  background(0);
  image(video, 0, 0);
  loadPixels();
  video.loadPixels();
  for (int x = 0; x<width; x++) {
    for (int y=0; y<height; y++) {
      int theIndex = x +y * width;
      float distance = dist(x,y,width/2,height/2);
      float r1 = map(random(1,1280),mouseX,distance,0,factor);
      float g1 = map(random(1,1280),mouseX,distance,0,factor);
      float b1 = map(random(1,1280),mouseX,distance,0,factor);
      //*factor
      //255 - [red/green/blue/blue] inverts
      float r = ( red(video.pixels[theIndex])+r1);
      float g = ( green(video.pixels[theIndex])+g1);
      float b = ( blue(video.pixels[theIndex])+b1);
      pixels[theIndex] = color(r, g, b);
    }
    updatePixels();
    factor = factor * 1.0001;
  }
}

//like mousepressed/keypressed/ect
void captureEvent (Capture video) {
  video.read();
}
