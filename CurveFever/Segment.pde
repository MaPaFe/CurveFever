class Segment {
  PVector pos;
  int size;

  Segment(PVector pos_) {
    pos = pos_.copy();
    size = 5;
  }

  void display() {
    ellipse(pos.x, pos.y, size, size);
  }
}