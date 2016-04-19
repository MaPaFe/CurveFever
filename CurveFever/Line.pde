class Line {
  ArrayList<Segment> path = new ArrayList<Segment>();//array de Segment objects
  float angle;
  PVector pos, vel;
  boolean colission;
  color c;

  Line(float x_, float y_) {
    pos = new PVector(x_, y_);
    vel = PVector.random2D(vel);
    vel.mult(speed);//velocidad ajustada
    colission = false;
    c = color(random(255), 255, 255);
  }

  void update() {
    if (!colission) {
      pos.add(vel);//actualizar posicion de vector pos
      path.add(new Segment(pos, c));
      colission(this);
    }
    display();
  }

  void colission(Line l) {
    for (int i = 0; i < l.path.size() - speed * l.path.get(l.path.size()-1).size; i++) {
      Segment s = l.path.get(i);
      if (dist(l.path.get(l.path.size()-1).pos.x, l.path.get(l.path.size()-1).pos.y, s.pos.x, s.pos.y) < (l.path.get(l.path.size()-1).size/2 + s.size/2)) {
        colission = true;
      }
    }
    if (pos.x <= l.path.get(l.path.size()-1).size/2 || pos.x >= width - l.path.get(l.path.size()-1).size/2 || pos.y <= l.path.get(l.path.size()-1).size/2 || pos.y >= height - l.path.get(l.path.size()-1).size/2) {
      colission = true;
    }
  }

  void rotate(boolean rotate, float angle) {
    if (rotate) vel.rotate(radians(-angle));
    else vel.rotate(radians(angle));
  }

  void display() {
    for (Segment s : path) {
      s.display();
    }
  }
}