// http://curvefever.net/curve-fever/ //<>//

float size = 5;
float angle = 5;
float speed = 1.5;

ArrayList <Line> lines = new ArrayList <Line>();

void setup() {
  size(600, 600);//, P2D);
  //fullScreen();
  pixelDensity(2);
  noStroke();
  background(0);
  //frameRate(5);
  colorMode(HSB, 255);

  for (int i = 0; i < 3; i++) lines.add(new Line(random(height), random(width)));
}

void draw() {
  background(50);

  for (Line l : lines) { 
    for (Line other : lines) {
      l.colission(other);
    }
    l.update();
  }

  if (keyPressed) {
    for (Line l : lines) {
      switch(key) {
      case 'a' :
        l.rotate(true, angle);
        break;
      case 'd' :
        l.rotate(false, angle);
        break;
      case ' ' :
        l.path.clear();
        l.path.add(new Segment(l.pos, l.c));
        l.colission = false;
        break;
      }
    }
  }
}