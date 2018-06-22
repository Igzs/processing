float angle=PI;
float rotationSpeed = 1/2;
float sizeBox=0;
float spacing = width/2;

void setup()
{
  size(400,400,P3D);
  lights();
  sizeBox=30;
  surface.setResizable(false);

}

void draw()
{
  background(0);
  float a = map(mouseX,0,width,0,TWO_PI);
  float b = map(mouseY,0,height,0,TWO_PI);
  
  float color1 = constrain(mouseX,0,200);
  float color2 = constrain(mouseY,0,200);
  
  ambientLight(color1, color2, min(color1,color2));
  
  for(float i=spacing; i<width; i=i+spacing)
  { 
    for(float j=spacing; j<height; j=j+spacing)
    {
      
    pushMatrix();
    translate(i,j);
    rotateX(a);
    rotateY(b);
    box(sizeBox);
    popMatrix();
    }
  }
  
   
}
