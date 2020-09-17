////ARREGLOS IMAGENES Y TEXTOS

PImage [] imagen = new PImage [36];
String [] texto = new String [14];

String estado;
PFont Titulo;
PFont Dialogo;

int posx;
int posy;
int tamanio;

int posX1, posY1, posX2, posX3, posX4, posX5, posX6, posY2, posY3, posY4, posY5, posY6;
int tamX1;
int tamY1;


void setup () {

  size (800, 600);

//////////////////////////// PANTALLA INICIO
  estado = "inicio";  
  
 texto [0] = "VIAJE ESPACIAL";
 texto [1] = "VIAJE ESPACIAL";
 texto [2] = "Bienvenidx a este viaje espacial!,\nSoy Calvin y fui elegido para recorrer\nel espacio. Junto con mi nave \nintentaremos conocer algún planeta";
 texto [3] = "       3..2..1..DESPEGUE! \n\n Esta aventura será fabulosa \n Pulsa la barra espaciadora \n para continuar el viaje ";
 texto [4] = "      Desde acá la vista es increíble! \n\n Ahora tú decides a qué planeta iremos \n   Haz click en Marte o Jupiter para  \n      emprender el recorrido";
 texto [5] = "MARTE";
 texto [6] = "JUPITER";
 texto [7] = " Oh! no me esperaba esta lluvia \n de meteoritos. Que hacemos? \n Pulsa:\n           A para continuar viaje o \n           B para desviarnos";
 texto [8] = "Diganle a mi familia \n que los quiero";
 texto [9] = "Que es eso? Parece que\nhemos encontrado un nuevo\n planeta!! Gracias a tu ayuda\n          hicimos un nuevo \n         descubrimiento";
 texto [10] = "Después de varios días de\nrecorrido hemos llegado!\nHaz click en el planeta Jupiter\npara aterrizar";
 texto [11] = "Lo hemos lograddd...eh? \nespera, que es eso verde?\nParece que no estamos solos\nApreta C para ir a hablarles";
 texto [12] = "Hola! vengo en son de paa...\nAAAAAAAHHHHHHH";
 texto [13] = "        Reynoso, Jorgelina\n     Tecnología multimedia \n\n\n\n\n\n Universidad Nacional de La Plata\n             Facultad de Artes \n\n\n\n\n                          FIN";
 
  imagen [0] = loadImage ( "foto0.png" );
  imageMode ( CENTER );
  
  for (int i = 0 ; i < 36 ; i++) {
  imagen [i] = loadImage ("foto" + i + ".png"); } 

  Titulo = loadFont ( "AgencyFB-Bold-48.vlw" );
  Dialogo = loadFont ( "ArialUnicodeMS-48.vlw" );
  

  posx = 100;
  posy = 600; 
  tamanio = 30;


  posX1 = 450;
  posY1 = 0;
  posX2 = 500;
  posY2 = -400;
  posX3 = 550;
  posY3 = 300;
  posX4 = 900;
  posY4 = -200; 
  posX5 = 0;
  posY5 = 250;
  
  posY6 = -150 ;


  tamX1 = 250;
  tamY1 = 250;
 
}

///////FUNCIÓN GLOBO DIALOGO

void globodialogo (float x, float y, float a) {

  pushStyle();
  
  beginShape ();
  vertex( x , y + (height*0.1167));
  vertex( x + (width*0.0375), y + (height*0.1167));
  vertex( x - 20 , y + (height*0.1833));
  endShape();
  noStroke();
  ellipse ( x , y , a, (a*0.55) );
  noStroke ();  
  
  popStyle();
}

void draw () {

  //////////////////////////// PANTALLA INICIO
  if ( estado.equals( "inicio" ) ) {
    image ( imagen [0], (width/2), (height/3), width, height );
    image ( imagen [1], (width/2), ((height*3)/4), width, height/4 );
    image ( imagen [2], (width/2), ((height*5)/6), width, height/4 );
    image ( imagen [3], (width/2), ((height*5.5)/6), width, height/4 );
    image ( imagen [4], (width/4), ((height*7)/12), ((width*9)/16), ((height*9)/16) );
    image ( imagen [5], (width/2), ((height*43)/60), (width/4), (height/3) );
    image ( imagen [6], (width/2), ((height*11)/12), (width/4), (height/15) );

    textFont ( Titulo );
    textSize ( (width*0.0875) );
    fill ( 0 );
    text ( texto [0], (width*0.295), (height*0.14) );
    fill ( 230, 230, 45 );
    text ( texto [1], (width*0.3), (height*0.13) );
    fill ( 230, 230, 45 );
    globodialogo ((width*0.655), (height*0.459), (width*0.4));   
    textFont ( Dialogo );
    textSize ( (width*0.02) );
    fill ( 0 );
    text ( texto [2], (width*0.50875), (height*0.41), 300); 
    textSize ( (width*0.01875) );
     }

  ////////////////////////////// PANTALLA DESPEGUE

  else if ( estado.equals("despegue" ) ) {

    //Galaxia
    image ( imagen [7], width/2, height/2, width, height );
    image ( imagen [8], 0, height );
    image ( imagen [9], posx, posy, tamanio, tamanio );

    posx += 6;
    posy -= 8;
    tamanio = tamanio + 3;

    image ( imagen [10], ((width*9)/16), (height*5)/6, width/8, height/6 );
    globodialogo ((width*0.67875), (height*0.6), (width*0.325));
    fill ( 0 );
    textSize ( (width*0.01875) );
    text ( texto [3] , (width*0.57), (height*0.54) );
    fill ( 230, 230, 45 );
  } 
  ///////////////////////////// PANTALLA SISTEMA SOLAR

  else if ( estado.equals("sistema solar" ) ) {

    //Sistema Solar
    background ( 0 );
    image ( imagen [11], width/2, height/2, (width*9)/8, (height*5)/6 );
    image ( imagen [12], (width*10)/16, (height*5)/6, width/8, height/6 );
    fill ( 230, 230, 45 );
    
    globodialogo ((width*0.8), (height*0.64), (width*0.325));
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.0175) );
    text ( texto [4] , width*0.655, height*0.603);
    fill ( 230, 230, 45 );
    textFont ( Titulo );
    textSize ( (width*0.025) );
    fill ( 255 );
    text ( texto [5], width*0.37, height*0.453 );
    text ( texto [6], width*0.5375, height*0.37 );
  }

  /////////////////////////////////  PLANETA MARTE LLUVIA DE METEORITOS

  else if ( estado.equals( "Marte" ) ) {

    image ( imagen [13], width/2, height/2, width, height );
    image ( imagen [14], posX1, posY1, width/12, height/12 );
    posX1 = posX1 - 3 ;
    posY1 = posY1 + 3 ;
    image ( imagen [15], posX2, posY2, width*0.1, (height*2)/15 );
    posX2 = posX2 - 3 ;
    posY2 = posY2 + 3 ;
    image ( imagen [16], posX3, posY3, width*0.0875, (height*7)/60 );
    posX3 = posX3 - 3 ;
    posY3 = posY3 + 3 ;
    image ( imagen [17], posX4, posY4, (width*3)/16, height/4 );
    posX4 = posX4 - 3 ;
    posY4 = posY4 + 3 ;
    image ( imagen [18], posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 7;
    tamX1 -= 1.5;
    tamY1 -= 1.5;
    image ( imagen [19], (width*9)/16, (height*5)/6, width/8, height/6 );
    
    globodialogo ((width*0.6875), (height*0.617), (width*0.4)); 
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.01875) );
    text ( texto [7], (width*0.5475), (height*0.5832) );
    fill ( 230, 230, 45 );
  }


  ///////////////////////////////// HISTORIA NAVE ROTA EN MARTE

  else if ( estado.equals( "naverota" ) ) {

    image ( imagen [20], width*0.5, height*0.5, width, height);
    image ( imagen [21], ((width*9)/14.5), (height*5.3)/6, (width/8), (height/6) );
    
    globodialogo ((width*0.7687), (height*0.667), (width*0.325));
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.0225) );
    text ( texto [8], (width*0.669), (height*0.67) );
    fill ( 230, 230, 45 );
    image ( imagen [22], (width/2), (height/6), (width*5)/16, height*0.125 );
  }


  ///////////////////////////////// HISTORIA NUEVO PLANETA ENCONTRADO

  else if ( estado.equals("nuevoplaneta" ) ) {

    image ( imagen [23], width/2, height/2, width, height);
    image ( imagen [24], (width*9)/16, (height*5)/6, width/8, height/6 );
    
    globodialogo ((width*0.73125), (height*0.6), (width*0.325));
    fill (0);
    textFont ( Dialogo );
    textSize ( (width*0.01875) );
    text ( texto [9], (width*0.615), (height*0.55) );
    fill ( 230, 230, 45 );
    image ( imagen [25], width/2, (height*2)/15, (width*5)/16, height*0.125 );
  }



  ///////////////////////////////// HISTORIA PLANETA JUPITER

  else if ( estado.equals("Jupiter" ) ) {

    image ( imagen [26], width/2, height/2, width, height );
    image ( imagen [27], (width*3)/16, (height*5)/6, width/8, height/6 );
    
    globodialogo (width*0.35, height*0.5834, (width*0.325));
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.01875) );
    text ( texto [10], (width*0.2375), (height*0.55) );
    fill ( 230, 230, 45 );
    image ( imagen [28], posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 4;
    tamX1 -= 1;
    tamY1 -= 1;
  } 

  ////////////////////////////////// HISTORIA PLANETA JUPITER - ATERRIZAR

  else if ( estado.equals( "aterrizar" ) ) {

    image ( imagen [29], width/2, height/2, width, height );
    image ( imagen [30], (width*0.125), height*0.367, width/8, height/6 );
    
    globodialogo ((width*0.225), (height*0.1334), (width*0.325));
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.01875) );
    text ( texto [11], (width*0.1125), (height*0.09166) );
    fill ( 230, 230, 45 );
  }




  //////////////////////////////////// HISTORIA PLANETA JUPITER - CONOCER EXTRATERRESTRES

  else if ( estado.equals( "conocerextraterrestres" ) ) {

    image ( imagen [31], width/2, height/2, width, height );
    image ( imagen [32], (width*9)/16, height*0.283, width/8, height/6 );
    
    globodialogo (width*0.7125, height*0.1, (width*0.325) );
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( (width*0.0225) );
    text ( texto [12], (width*0.5815), (height*0.091) );
    fill ( 230, 230, 45 );  
    image ( imagen [33], (width*3)/16, height/7.5, (width*5)/16, height/8 );

}



  /////////////////////////////////// CREDITOS

  else if ( estado.equals("creditos") ) {

    image ( imagen [34], width/2, height/2, width, height );
    fill ( 255 );

    textSize ( width*0.0375 );
    text ( texto [13], (width/3.8), posY6 );
    posY6 += 2;
    image ( imagen [35], width/2, (height*5)/6, (width*5)/16, height/8 );
  }
} 

void keyPressed() {

  if ( key == ENTER && estado.equals("creditos")) {
    //CAMBIO de ESTADO: "INICIO" -> "DESPEGUE"
    estado = "inicio";
  }

  if ( key == ' ' && estado.equals("despegue" ) ) {
    //CAMBIO de ESTADO: "DESPEGUE" -> "SISTEMA SOLAR"
    estado = "sistema solar"; posx = 100; posy = 600; tamanio = 30;
  }  

  

  if ( key == 'a' && estado.equals( "Marte")) {
    //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "SEGUIR VIAJE A MARTE"
    estado = "naverota";
  }

  if ( key == 'b'&& estado.equals("Marte" ) ) {
    //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "DESVIARNOS"
    estado = "nuevoplaneta";
  }


  if ( key == 'c' && estado.equals( "aterrizar" )) {
    //CAMBIO de ESTADO: "ATERRIZAR" -> "HABLAR A LOS EXTRATERRESTRES"
    estado = "conocerextraterrestres";
  }


  if ( key == BACKSPACE && estado.equals( "conocerextraterrestres" ) ) {posY6 = -150 ;
    //CAMBIO de ESTADO: "FINALES DE HISTORIA" -> "CREDITOS"
    estado = "creditos";
  }

 if ( key == BACKSPACE && estado.equals( "nuevoplaneta" ) ) {posY6 = -150 ;
    //CAMBIO de ESTADO: "FINALES DE HISTORIA" -> "CREDITOS"
    estado = "creditos";
 }
 
  if ( key == BACKSPACE && estado.equals( "naverota" ) ) {posY6 = -150 ;
    //CAMBIO de ESTADO: "FINALES DE HISTORIA" -> "CREDITOS"
    estado = "creditos";
} 

}

void mousePressed() {

  //CUANDO: hago clic sobre el el boton de iniciar
  if ( estado.equals( "inicio" ) && mouseX > (width*0.3737) && mouseX < (width*0.625) && mouseY > (height*0.88) && mouseY < (height*0.9516) ) {
    //INICIO AVENTURA: "despegue"
    estado = "despegue";
  }

  //CUANDO: hago clic sobre Marte
  if ( estado.equals( "sistema solar" ) && mouseX > (width*0.3587) && mouseX < (width*0.4287) && mouseY > (height*0.403) && mouseY < (height*0.57) ) {posX1 = 450; posY1 = 0; 
  posX2 = 500; posY2 = -400 ; posX3 = 550 ; posY3 = 300 ; posX4 = 900 ; posY4 = -200 ; posX5 = 0 ; posY5 = 250 ;
  tamX1 = 250; tamY1 = 250;
    //CAMBIO de ESTADO: "sistema solar" -> "Marte"
    estado = "Marte";
  }

  //CUANDO: hago clic sobre Jupiter
  if ( estado.equals( "sistema solar" ) && mouseX > (width*0.4712) && mouseX < (width*0.6712) && mouseY > (height*0.3184) && mouseY < (height*0.65) ) {
    //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
    estado = "Jupiter";
  }

  //CUANDO: hago clic sobre el planeta Jupiter para aterrizar
  if ( estado.equals( "Jupiter" ) && mouseX > (width*0.63) && mouseX < width && mouseY > (height*0.0166) && mouseY < (height*0.9834) ) {
    //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
    estado = "aterrizar"; posx = 100; posy = 600; tamanio = 30;
  }

  println (mouseX+"X"+","+mouseY+"Y");
  println (estado);
}
