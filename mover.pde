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
    
    pushMatrix();
    translate(width/2,height/2);
    scaleValue = location.mag();
    
    println("This is dist = " + scaleValue);
    
    popMatrix();
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

