class Esmaltes {
  PImage Esmalte1, Esmalte2, esmalte;
  boolean cambia;
  Esmaltes() {
    Esmalte1= loadImage("cambioesmalte.png");
    Esmalte2= loadImage("esmalte.png");
    esmalte=Esmalte1;
  }
  void Dibujar() {
    image(esmalte, 0, 0, 600, 600);
  }
  void Cambio() {
    cambia= !cambia;
    if (cambia) {
      esmalte=Esmalte2;
    } else {
      esmalte=Esmalte1;
    }
  }
}
