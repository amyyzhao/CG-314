Table stats;

int[] demograph;

void setup() {
  size(480, 120);
  Table stats = loadTable("Demographic_Statistics_By_Zip_Code.csv", "header");
  demograph = new int[stats.getRowCount()];
  for (int i=0; i<stats.getRowCount()-2; i++){ 
    demograph[i] = stats.getInt(i, 4);
  }
}

void draw() {
  background(255);
  //stroke(255, 0, 0);
  noFill();
  beginShape();
  for (int i = 0; i <demograph.length; i++) {
    float x = map(i, 0, demograph.length-1, 20, 460); 
    float y = map(demograph[i], 0, 120, 100, 20); 
    stroke(200);
    line(x,0,x,height);
    stroke(255,0,0);
    vertex(x, y);
  }
  endShape();
}