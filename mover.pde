class Mover {
  PVector location;
  PVector velocity;
  
  Mover(PVector location, PVector velocity) {
    
//    velocity = new PVector(-2,2);
  }

  void update() {
    // Motion 101: Locations changes by velocity.
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,16,16);
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
