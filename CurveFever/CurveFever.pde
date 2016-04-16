// http://curvefever.net/curve-fever/   //<>// //<>//

float angle = 5;
float speed = 1;

Line myLine = new Line(100, 100);
Line myLine2 = new Line(200, 200);

void setup() {
  size(600, 600);//, P2D);
  //fullScreen();
  pixelDensity(2);
  noStroke();
  background(0);
  //frameRate(5);
}

void draw() {
  background(0);
  myLine.live();
  println(myLine.colission);
  //myLine2.live();

  if (keyPressed) {
    switch(key) {
    case 'a' :
      myLine.rotate(1, angle);
      break;
    case 'd' :
      myLine.rotate(-1, angle);
      break;
    case 'k' :
      myLine2.rotate(1, angle);
      break;
    case 'l' :
      myLine2.rotate(-1, angle);
      break;
    case ' ' :
      myLine.path.clear();
      myLine2.path.clear();
      break;
    }
  }
}