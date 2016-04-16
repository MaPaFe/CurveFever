class Line {
  ArrayList<Segment> path = new ArrayList<Segment>();//array de Segment objects
  float angle;
  PVector pos, vel;
  boolean colission;

  Line(float x_, float y_) {
    pos = new PVector(x_, y_);
    vel = PVector.random2D(vel);//ya encontré como hacerlo
    vel.mult(speed);//velocidad ajustada
    colission = false;
  }

  void live() {//función principal
    update();
    colission();
    display();
  }

  void update() {
    pos.add(vel);//actualizar posicion de vector pos
    path.add(new Segment(pos));
  }

  void colission() {
    for (Segment a : path) {
      for (Segment b : path) { 
        if (dist(a.pos.x, a.pos.y, b.pos.x, b.pos.y) < (a.size/2 + b.size/2)) {
          colission = true;
        }
      }
    }
  }

  void rotate(float rotate, float angle) {
    if (rotate>0) {
      vel.rotate(radians(-angle));
    }
    if (rotate<0) {
      vel.rotate(radians(angle));
    }
  }

  void display() {
    for (Segment p : path) {
      p.display();
    }
  }
}