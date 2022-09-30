class Labial {
  PImage Labial1, Labial2, labial;
  boolean cambia;
  Labial() {
    Labial1= loadImage("cambiolabial.png");
    Labial2= loadImage("labial.png");
    labial=Labial1;
  }
  void Dibujar() {
    image(labial, 0, 0, 600, 600);
  }
  void Cambio() {
    cambia= !cambia;
    if (cambia) {
      labial=Labial2;
    } else {
      labial=Labial1;
    }
  }
}
