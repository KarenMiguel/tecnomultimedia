// Variables de la imagen ToyStory
float posX;
float posY;
float t;
float achicar; 


PImage ToyStory2; // Variable de la imagen 



void setup() {
  size (600, 600);

  //Valores, Imagen ToyStory
  posX = posY = 300;
  t= 800; 
  achicar= 10; 



  // Carga de imagenes utilizadas 
  ToyStory2 = loadImage ("ToyStory2.jpg");
}


void draw() {
  background (0);


  imageMode (CENTER);
  //image (ToyStory2, 300, 300, 200, 200);
  image (ToyStory2, posX, posY, t, t);



  if (t <= 800)
    t = t - achicar;
  if (t <= 200) {
    achicar = 0;
  }
}
