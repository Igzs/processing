float angle=-90;
PGraphics lines;
PGraphics circles;

void setup()
{
  size(400,400);
  lines = createGraphics(400,400);
  circles = createGraphics(400,400);
  lines.beginDraw();
  background(179,183,166);
  translate(width/2,height/2);
  float x1=50*cos(radians(angle));
  float y1=40*sin(radians(angle));
  int x2=-width/2;
  int y2=-height/2;
  int lengthLines =  200;
  stroke(0); 
  for(int i=0; i< width; i++)
  {
    x2+=random(6,10);
    y2+=random(6,10);
    x1=50*cos(radians(angle));
    y1=40*sin(radians(angle));
    line(x1,y1,x2,lengthLines);    
    line(x1,y1,x2,-lengthLines);
    line(x1,y1,lengthLines,y2);
    line(x1,y1,-lengthLines,y2);
    if(x2>width/2 || y2>height/2) break;
  }
  lines.endDraw();
}

void draw()
{
  circles.beginDraw();
   translate(width/2,height/2);
  int circleSize = 150;
  /** Dessin cercles **/ 
  fill(179,183,166);
  noStroke();
  //cercle du milieu
  ellipse(0,0,circleSize,circleSize);
 
  fill(60,60,60);
  //ellipse ref haut cercle
  ellipse(-32,-24,13,13);
  //petit triangle du milieu du cercle
  ellipse(-22,-6, 3, 3);
  ellipse(-32,0, 3, 3);
  ellipse(-29,7, 3, 3);
  //points isolés
  ellipse(-37,19,12,12);
  ellipse(-65,-10,6,6);
  //duo bord du cercle
  ellipse(-63,44,20,20);
  ellipse(-71,18,20,20);
  //trident gauche
  ellipse(-140,-20,30,30);
  ellipse(-141,20,25,25);
  ellipse(-122,41,18,18);
  //point isolé extreme gauche
  ellipse(-150,133,40,40);
  
  circles.endDraw();
  image(lines,0,0);
  
  
  
   
}
