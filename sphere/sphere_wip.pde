 PImage texture; 
 PShape sphere;
 
void setup() { 
  size(600, 600, P3D); 
  background(0); 
  texture = loadImage("img/mesh.jpg");
  sphere = createShape(SPHERE, 200); 
  sphere.setStroke(false);
  sphere.setTexture(texture);
  noStroke();
}
 
void draw() {
  background(0);
  translate(width/2, height/2);
  rotateY(map(mouseX,0,width,-PI,PI));
  rotateX(map(mouseY,0,width,-PI,PI));
  shape(sphere);
}
