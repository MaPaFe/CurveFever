// http://curvefever.net/curve-fever/ //<>//

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

  for (int i = 0; i < 2; i++) lines.add(new Line(random(height), random(width)));
}

void draw() {
  background(0);

  for (Line l : lines) {
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
        break;
      }
    }
  }

  for (Line l : lines) {
    for (Line other : lines) {
      l.colission(other);
    }
  }
}