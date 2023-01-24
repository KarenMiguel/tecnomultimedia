void setup () {
  
// fondo
size (600, 600);
background (211, 133, 245);
stroke(255);

rect (600,570,600,10);
fill (204);
ellipse (300, 520, 400, 90);
fill(255);
ellipse (500, 250, 10, 10);
ellipse (460, 387, 10, 10);
ellipse (389, 200, 10, 10);
ellipse (469, 80, 10, 10);
ellipse (100, 300, 10, 10);
ellipse (280, 30, 10, 10);
ellipse (100, 152, 10, 10);
ellipse (100, 74, 10, 10);
ellipse (114, 440, 10, 10);


// cuerpo
ellipse (300, 420, 200, 200);
ellipse (300, 288, 160, 160);
ellipse (300, 160, 120, 120);
fill (0);
ellipse (300, 288, 14, 14);
fill (0);
ellipse (300, 270, 14, 14);
fill (0);
ellipse (300, 251, 14, 14);
fill (0);

// ropa
strokeWeight (18);
stroke (22, 242, 198);
noFill ();
bezier (330, 220, 200, 160, 230, 230, 350, 200);
fill (76, 153, 156);
noStroke ();

fill (240, 34, 34);
rect (250, 95, 100, 10);
rect (267, 50, 65, 50);
fill (0);
rect (267, 90, 65, 5);


// cara
fill (0);
ellipse (280, 140, 10, 13);
fill (0);
ellipse (318, 140, 10, 13);
fill (247, 160, 52);    
triangle (280, 200, 295, 160, 310, 160);


// manos
stroke (118, 108, 108);
strokeWeight (2);
line (120, 157, 219, 300);
line (110, 195, 150, 200); 
line (110, 195, 100, 200);
line (382, 295, 490, 160);





}
