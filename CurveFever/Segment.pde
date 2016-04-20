class Segment {
  PVector pos;
  color c;

  Segment(PVector pos_, color c_) {
    pos = pos_.copy();
    c = c_;
  }

  void display() {
    fill(c);
    ellipse(pos.x, pos.y, size * 2, size * 2);
  }
}