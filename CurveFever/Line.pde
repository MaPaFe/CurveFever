class Line {
  ArrayList<Segment> path = new ArrayList<Segment>(100);//array de Segment objects
  float angle;
  PVector pos, speed; //posicion
  boolean colision;
  Line(int x_, int y_) {
    pos = new PVector(x_, y_);
    speed = new PVector(random(0.0, 1.1), random(0.0, 1.1));//vector aleatorio para direccion
    speed.normalize();//normalizar vector
    speed.mult(Speed);//velocidad ajustada
    colision = false;
  }
  void linee() {//función principal
    update();
    //selfColision();
    display();
  }
  void update() {
    pos.add(speed);//actualizar posicion de vector pos
  }

  void selfColision() {
     for (int i=0; i<path.size(); i++) { //path.size()
     Segment a = path.get(i);
      for (int j=0; j<path.size(); j++) { 
         Segment b = path.get(j);
         if(dist(a.posicion.x,a.posicion.y,b.posicion.x,b.posicion.y)<5){
          // println(a.posicion);
    
         //  println(b.posicion);
          //  println(colision);
          // println(dist(a.posicion.x,a.posicion.y,b.posicion.x,b.posicion.y));
         colision = true;
         }
      }
     }
  }
  void rotateLine(int rotate, int angle) {
    if (rotate>0) {    //left//a          //
      speed.rotate(radians(-angle));      //
    }                                    // algoritmo de rotacion 
    if (rotate<0) {    //right//d         // del vector speed(dirección)
      speed.rotate(radians(angle));       //
    }
  }

  void display() {
    path.add(new Segment(pos)); //nuevo objeto al ArrayList con pos actual
    for (int i=0; i<path.size(); i++) {   //
      Segment path_ = path.get(i);       // dibuja el Arraylist  
      path_.display();                   // de objetos Segment
    }                                  //
  }
}