// https://youtu.be/cwTbim2n3SA

int cantidad=11;
float tam= 60, x, y, tamE;
int transp;
boolean aparece, congela, puntoB, puntoM;
color fondo= color(0);
void setup () {
  size (600, 600);
  tamE=15;
}
void draw () {
  Tiempo(); // función propia creada para que se mueva la pelota 
  background (255); 
  if (puntoB) {
    fondo=color(154, 216, 149);
  } 
  if (puntoM) {
    fondo=color(240, 51, 67);
  } else if (puntoB== false && puntoM==false ) {
    fondo= color(0);
  }
  for (int i=0; i<cantidad; i++) {
    for (int j=0; j<cantidad; j++) {
      stroke(255);
      strokeWeight(10);
      fill(fondo);
      rect(tam*i, tam*j, tam, tam);
    }
  }
  if (aparece) {
    x=tam* int(random(1, 9));
    y=tam* int(random(1, 9));
    congela=true;
    aparece=false;
  }
  if (congela) {
    Pelota(x, y);
  }
}
void mousePressed() {
  if (dist(mouseX, mouseY, x, y)<= tamE) {
    puntoB=true;
  } else if (dist(mouseX, mouseY, x, y)>= tamE) {
    puntoM=true;
  }
}
void mouseReleased() {
  puntoB=false;
  puntoM=false;
}
void Pelota(float xp, float yp) { // función para que aparezca la pelota 
  strokeWeight(0);
  fill(204);
  ellipse(xp, yp, tamE, tamE);
}
void Tiempo() {
  if (frameCount%120==0) {
    aparece=true;
  }
}
void keyPressed() {
  frameCount=0;
  aparece= false;
  congela= false;
  puntoB= false;
  puntoM= false;
}
