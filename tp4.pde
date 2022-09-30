// https://youtu.be/A536oSt368A
// El mini-videojuego consisite en una aventura gráfica en donde se puede interactuar con maquillajes, esmaltes y espejo. 
Espejo es;
Esmaltes e;
Labial l;
PImage fondo;
void setup() {
  size(600, 600);
  e=new Esmaltes();
  l=new Labial();
  es= new Espejo();
  //Se inicia
  fondo=loadImage("fondo.jpg");
}
void draw() {
  image(fondo, 0, 0, 600, 600);
  //  println(mouseX, mouseY, e.cambia, es.crece, es.animacion);
  e.Dibujar();
  l.Dibujar();
  es.Dibujar();
  if (es.animacion==true) {
    es.Animacion();
  } else {
    es.tx=600;
    es.ty=600;
    es.x=0;
    es.y=0;
  }
}
void mousePressed() {
  if (mouseX>=480 && mouseX<=560 && mouseY>=220 && mouseY<=300) {
    e.Cambio();
  }
  if (mouseX>=60 && mouseX<=90 && mouseY>=225 && mouseY<=450) {
    l.Cambio();
  }
  if (mouseX>=140 && mouseX<=375 && mouseY>=50 && mouseY<=400) {
    es.Cambio();
  }
}
