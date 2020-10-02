class Ellipse {
  
  
float x, y, tamx, tamy;
  
 Ellipse (float x1, float y1, float tamx1, float tamy1) {
 x = x1;
 y = y1;
 tamx = tamx1;
 tamy = tamy1;
}


void dibujar (){

  for (int i=1; i<100; i++){
  ellipse (random (0, 600), i*random (0,600), random(0,50), random (0,50));
  stroke (#DE7D51*i);
  fill (#35860E*i);
 }
 }
}
