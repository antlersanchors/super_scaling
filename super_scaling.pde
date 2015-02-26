ArrayList myMovers;

// Declare Mover object
Mover mover;

PVector center = new PVector(width/2, height/2);
PVector mouse = new PVector(mouseX, mouseY);

void setup() {
  size(200, 200);
  smooth();
  background(255);

  myMovers = new ArrayList();


}

void draw() {
  noStroke();
  fill(255, 10);
  rect(0, 0, width, height);

  for (int i = 0; i < myMovers.size (); i++) {
    Mover m = (Mover) myMovers.get(i);

    // Call functions on Mover object.
    mover.update();
    mover.checkEdges();
    mover.display();
  }
}

void mousePressed() {
  // Make Mover object
  PVector dir = PVector.sub(mouse, center);
  println("Before normalize: dir = " + dir);

  dir.normalize();
  println("After normalize: dir = " + dir);

  myMovers.add(new Mover(mouse, dir));
}

