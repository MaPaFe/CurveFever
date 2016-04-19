class Segment {
  PVector pos;
  int size;
  color c;

  Segment(PVector pos_, color c_) {
    pos = pos_.copy();
    size = 5;
    c = c_;
  }

  void display() {
    fill(c);
    ellipse(pos.x, pos.y, size, size);
  }
}