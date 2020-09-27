PImage auto, pista;

Auto a;

void setup(){
 size (800,400);
 
 a = new Auto (150, 175, 150, 150);
 
 pista = loadImage ("pista.jpg");
 auto = loadImage ("auto.png");
 }


void draw (){

  image (pista,0, 0, 800,400); 
  
   
  a.imagen();
  
}

void mouseMoved(){
  a.movMouse();
}  
