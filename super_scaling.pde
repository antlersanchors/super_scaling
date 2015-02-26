// Declare Mover object
Mover mover;
PVector center = new PVector(width/2,height/2);

void setup() {
  size(200, 200);
  smooth();
  background(255);
  mover = new Mover();
}

void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);
   
  // Call functions on Mover object.
  mover.update();
  mover.checkEdges();
  mover.display();
}

void mousePressed() {
  // Make Mover object
  mover = new Mover();
}


