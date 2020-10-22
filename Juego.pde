class Juego{
  
  // PROPIEDADES (variables)
   int estado = 0; 
   PFont Titulo, Cartel;
   int disparos; // contador de disparos que hacen contacto con la nave
   int vidas = 3;
   int c = 12;
   PImage [] imagen = new PImage [8];
  
   Naveextraterrestre extraterrestre;
   Nave jugador;
   Meteorito[] meteoritos = new Meteorito [c];
  
  Juego (){
   jugador = new Nave();
   extraterrestre = new Naveextraterrestre();
  
   for ( int i = 0; i < c; i++ ) {
   meteoritos[i] = new Meteorito ();
  }
    for (int p = 0 ; p < 7 ; p++) {
  imagen [p] = loadImage ("foto" + p + ".png"); } 

   Titulo = loadFont ( "AgencyFB-Bold-48.vlw" );
   Cartel = loadFont ( "Arial-BoldMT-15.vlw");
 
 
  }    
  
  void jugar(){
   menu();
   empezar();
   ganaste();
   perdiste();
  } 
  
  // -----------------------------------------------------
  // METODOS (funciones) 
 
  void menu(){ 
    if (estado ==0){
    textSize (width*0.13);
    imageMode (CENTER);    
    textFont ( Cartel );    
    image (imagen [0], width/2, height/2, width, height);
    image (imagen [1], width*0.22, height*0.86, width*0.14, height*0.18);
    fill(230, 230, 45 );
    beginShape ();
    vertex( width*0.34 , height*0.81);
    vertex( width*0.3, height*0.84);
    vertex( width*0.34, height*0.83);
    endShape();
    noStroke();
    fill(230, 230, 45 );
    ellipse ( width*0.505 , height*0.80 , width*0.35, width*0.22 );
    noStroke ();
    fill (0);
    textSize (width*0.016);
    text ("   Ohh no, parece que estamos \nen un aprieto, y no estamos solos!\n Intenta esquivar los meteoritos con\nlas teclas LEFT Y RIGHT y destruye\n la nave del extraterrestre utilizando\n las balas con la tecla UP. \n\n        SUERTE CAMARADA! ", width*0.38 , height*0.72);
    textFont ( Titulo );
    textSize (width*0.15);
    fill (0);
    text ( "Jugar", width*0.38, height/2 );
    fill ( 230, 230, 45 );
    text ( "Jugar", width*0.37, height*0.51 );    
    if ( mousePressed && mouseX > (width*0.4) && mouseX < (width*0.67) && mouseY > (height*0.35) && mouseY < (height*0.55))estado= 1; 
    vidas = 3; disparos =0;    
}
  }
   void empezar(){      
    if (estado==1){
       
    image (imagen [2], width/2, height/2, width, height);
    jugador.dibujar();
    extraterrestre.dibujar();
    disparoExtraterrestre(); 
    perderVidas();
    
    for ( int i = 0; i < c; i++ ) {  
    meteoritos[i].dibujar();
    meteoritos[i].actualizar();
  }
      
    fill(0);
    stroke (255);
    ellipse (width*0.66, 70, 85, 85);
    fill(0);
    stroke (255);
    ellipse (width*0.35, 70, 85, 85);   
    fill(255);
    textFont ( Cartel );
    text("Puntos", width*0.63, 70);
    text (disparos, width*0.65, 87);
    text("Vidas", width*0.33, 70);
    text(vidas, width*0.35,  87);  
    if (vidas == 0) estado=2;
    if (disparos == 30) estado =3; 
   }
  } 
  
   void perdiste(){
    if (estado == 2){ 
    image (imagen [3],width/2, height/2, width, height);
    fill ( 0 );
    textFont ( Titulo );
    textSize (80);
    text ( "GAME OVER", width/2-130, height*0.25 );
    fill ( 230, 230, 45 );
    text ( "GAME OVER", width/2-135, height*0.255 ); 
   }
  }
    
   void ganaste(){
    if (estado == 3){
    image (imagen [4], width/2, height/2, width, height); 
    textFont ( Titulo );
    textSize (80);
    fill ( 50 );
    text ( "GANASTE", width/2-110, height*0.25 );
    fill ( 230, 230, 45 );
    text ( "GANASTE", width/2-105, height*0.255 );  
   }  
  }
  
    //----- método para descontar vida cuando un meteorito toca la nave --//
   void perderVidas() {
    for (int i=0; i<c; i++) {
    float distan = dist(meteoritos[i].mx, meteoritos[i].my, jugador.x, jugador.y );
    if (distan < meteoritos[i].mtam ) {
    meteoritos[i].reciclar();
    meteoritos[i].chocado();
    image (imagen [5], jugador.x, jugador.y, 300,300);
    vidas--; 
    fill(255);
    ellipse (width*0.35, 70, 100, 100);      
    }
   }
  }
  
   //----- método para detectar el contacto entre la bala y el extraterrestre --//
  void disparoExtraterrestre() {
   for (int i=0; i<c; i++) {
   float distan = dist(jugador.bala.bx, jugador.bala.by, extraterrestre.posx, extraterrestre.posy );
   if (distan < extraterrestre.nt/2 ) {
   disparos = disparos + 10;
   image (imagen [6], extraterrestre.posx, extraterrestre.posy, 300,300);
   jugador.bala.actualizar(); // reinicia la bala
   fill(255);
   ellipse (width*0.66, 70, 100, 100);
    }
   }
  }    
    
   void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
    jugador.bala.disparar();
    jugador.mover();
   }

 }
