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

    path.add(new Segment(pos, c));
  }

  void update() {
    if (!colission) {
      pos.add(vel);//actualizar posicion de vector pos
      path.add(new Segment(pos, c));
    }
    display();
  }

  void colission(Line l) {
    Segment t = path.get(path.size()-1);
    for (int i = 0; i < l.path.size() - speed * size; i++) {
      Segment s = l.path.get(i);
      if (dist(t.pos.x, t.pos.y, s.pos.x, s.pos.y) < size * 2) {
        colission = true;
      }
    }
    if (pos.x <= size || pos.x >= width - size || pos.y <= size || pos.y >= height - size) {
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