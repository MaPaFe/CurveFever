// http://curvefever.net/curve-fever/   //<>// //<>//

/// //Ajustes// ///
int Angle=5;
float Speed=3;




Line myLine=new Line(100, 100);
Line myLine2=new Line(200, 200);

void setup() {
  size(600, 600);  //,P2D
  noStroke();
  smooth();
  background(0);
  //frameRate(5);
}

void draw() {
  background(0);
  myLine.linee();
  println(myLine.colision);
  myLine2.update();

  if (keyPressed) {
    //println("typed " + key + " "+ int(key) + " " + keyCode);
    switch(key) {

    case 'a' ://left
      myLine.rotateLine(1, Angle);
      break;
    case 'd' ://right
      myLine.rotateLine(-1, Angle);
      break;
    case ' ' :
      background(0);
      break;
    }


    switch(key) {

    case 'k' ://left
      myLine2.rotateLine(1, Angle);
      break;
    case 'ñ' ://right
      myLine2.rotateLine(-1, Angle);
      break;
    case ' ' :
      background(0);
      break;
    }
  }
}
/*
void keyPressed() {
  //println("typed " + key + " "+ int(key) + " " + keyCode);
  switch(key) {

  case 'a' ://left
    myLine.rotateLine(1, Angle);
    break;
  case 'd' ://right
    myLine.rotateLine(-1, Angle);
    break;
  case ' ' :
    background(0);
    break;
  }


  switch(key) {

  case 'k' ://left
    myLine2.rotateLine(1, Angle);
    break;
  case 'ñ' ://right
    myLine2.rotateLine(-1, Angle);
    break;
  case ' ' :
    background(0);
    break;
  }
}
*/