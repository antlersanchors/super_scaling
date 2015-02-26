class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  float distanceFromCenter;
  int scaleFactor;

  PVector canvasCenter = new PVector(width/2, height/2);

  Mover(PVector startLoc, PVector startDir ) {

    location = startLoc;
    velocity = startDir;
  }

  void update() {
    // Motion 101: Locations changes by velocity.
    location.add(velocity);
    //    println("Location " + location);
  }

  void display() {
    stroke(0);
    fill(175);

    distanceFromCenter = location.dist(canvasCenter);
    println("This is dist = " + distanceFromCenter);

    scaleFactor = int(map(distanceFromCenter, 0, 450, 0.6, 8));
    println("SCALE FACTOR: " + scaleFactor);

    rect(location.x, location.y, 16, 16);
  }

  void scaleUp() {


    //    scale(scaleFactor);
  }

  void checkEdges() {

    if (location.x > width) {
      myMovers.remove(this);
    } else if (location.x < 0) {
      myMovers.remove(this);
    }

    if (location.y > height) {
      myMovers.remove(this);
    } else if (location.y < 0) {
      myMovers.remove(this);
    }
  }
}

