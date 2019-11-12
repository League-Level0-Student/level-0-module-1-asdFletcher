void setup() {
    size(500, 500);
}

class BiteLocation {
  int x;
  int y;
}

ArrayList<BiteLocation> biteLocations = new ArrayList<BiteLocation>();

void mouseClicked() {
  println("mouseX: ", mouseX);
  println("mouseY: ", mouseY);

  BiteLocation freshBite = new BiteLocation();
  freshBite.x = mouseX;
  freshBite.y = mouseY;
  biteLocations.add(freshBite);
}

void drawAllBites() {
  for (int i = 0; i < biteLocations.size(); i++) {
    // draw a bite
    fill(255,255,255);
    circle(biteLocations.get(i).x, biteLocations.get(i).y, 35);
  }
}

void draw() {
    background(200, 200, 200);
    noStroke();
    
    // tomato
    fill(224, 86, 79);
    ellipse(150, 200, 150, 150);
    ellipse(212, 200, 150, 150);
    
    // stem
    fill(139, 227, 134);
    rect(176, 103, 12, 32);
    
    // bites
    drawAllBites();
}
