ArrayList myMovers;

// Declare Mover object
Mover mover;

PVector mouse;
PVector dir;
PVector center;

void setup() {
  translate(width/2, height/2);
  size(800, 800, P3D);
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
    m.scaleUp();
  }
}

void mousePressed() {
  PVector center = new PVector(width/2, height/2);
  println("The Center of Everything is: " + center);

  PVector mouse = new PVector(mouseX, mouseY);

  PVector dir = PVector.sub(mouse, center);
  println("Before normalize: dir = " + dir);

  dir.normalize();
  println("After normalize: dir = " + dir);

  myMovers.add(new Mover(mouse, dir));
}

