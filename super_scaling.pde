
float x;
float y;

void setup() {
  size(200,200);
  smooth();
  background(255);
}

void draw() {

  
  // Two PVectors, one for the mouse location and one for the center of the window.
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  x = mouse.x;
  y = mouse.y;
  
  // PVector subtraction!
  mouse.sub(center);
  
  // Draw a line to represent the vector.
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
  
}

void mousePressed() {
  translate(mouseX,mouseY);
  fill
  ellipse(x,y,30,30);
}
