Table stats;

int[] homeruns;

void setup() {
  size(480, 120);
  Table stats = loadTable("Donaldson.csv", "header");
  homeruns = new int[stats.getRowCount()];
  for (int i=0; i<stats.getRowCount()-2; i++){ 
    homeruns[i] = stats.getInt(i, 4);
  }
}

void draw() {
  background(255);
  //stroke(255, 0, 0);
  noFill();
  beginShape();
  for (int i = 0; i <homeruns.length; i++) {
    float x = map(i, 0, homeruns.length-1, 20, 460); 
    float y = map(homeruns[i], 0, 60, 100, 20); 
    stroke(200);
    line(x,0,x,height);
    stroke(255,0,0);
    vertex(x, y);
  }
  endShape();
}
