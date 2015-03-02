class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float scaleValue;

  Mover(PVector startLoc, PVector startDir ) {

    location = startLoc;
    velocity = startDir;

  }

  void update() {
    // Motion 101: Locations changes by velocity.
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    
    ellipse(location.x, location.y, 16, 16);
  }
  
  void scaleUp() {
    scaleValue = PVector.dist(location, center);
    pushMatrix();
    
    
    println("This is dist = " + scaleValue);
    
    popMatrix();
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

