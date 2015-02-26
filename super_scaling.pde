ArrayList myMovers;

// Declare Mover object
Mover mover;

PVector mouse;
PVector center;
PVector dir;

void setup() {
  size(800, 800);
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
    m.update();
    m.checkEdges();
    m.display();
  }
}

void mousePressed() {

  PVector center = new PVector(width/2, height/2);
  PVector mouse = new PVector(mouseX, mouseY);
  // Make Mover object
  PVector dir = PVector.sub(mouse, center);
  println("Before normalize: dir = " + dir);

  dir.normalize();
  println("After normalize: dir = " + dir);

  myMovers.add(new Mover(mouse, dir));
}

