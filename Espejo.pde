class Espejo {
  PImage Frase, Espejo, espejo2;
  boolean cambia, crece, animacion;
  float tx=600, ty=600;
  float x, y;
  Espejo() {
    Frase= loadImage("lip.png");
    Espejo= loadImage("espejo.png");
    espejo2=Espejo;
  }
  void Dibujar() {
    image(espejo2, x, y, tx, ty);
  }
  void Cambio() {
    cambia= !cambia;
    if (cambia) {
      espejo2=Frase;
      animacion=true;
      x=170;
      y=120;
      tx=50;
      ty=25;
    } else {
      espejo2=Espejo;
      animacion=false;
    }
  }
  void Animacion() {

    if (crece) {
      tx++;
      ty++;
    } else {
      tx--;
      ty--;
    }
    if (tx<=100) {
      crece=true;
    }
    if (tx>=170) {
      crece=false;
    }
  }
}
