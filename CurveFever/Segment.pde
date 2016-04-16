class Segment {
  PVector posicion;//posición de circulo 
  int size;
  Segment(PVector posicion_) {
    posicion = posicion_.get();
    size = 5;
  }
  
  void display() {
   ellipse(posicion.x, posicion.y, size, size); 
  }
  
}