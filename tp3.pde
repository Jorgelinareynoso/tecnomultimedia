//////////////////////////// PANTALLA INICIO
String estado;
PFont Titulo;
PFont Dialogo;
PImage Tierra, Nave, Sistemasolar, Astronauta, Pasto, Botoniniciar;

//////////////////////////// PANTALLA DESPEGE
PImage Navedos, planetatierra; 
int posx;
int posy;
int tamanio;
PImage Astronauta2;

//////////////////////////// PANTALLA SISTEMA SOLAR
PImage Galaxia;

//////////////////////////// HISTORIA PLANETA MARTE

PImage Marte, Meteorito, Navetres, astronautatres, Fondomarte, Nuevoplaneta, astronauta3, pantalla;
int posX1, posY1, posX2, posX3, posX4, posX5, posX6, posY2, posY3, posY4, posY5, posY6, posX7, posY7, posX8, posY8;
int tamX1;
int tamY1;

//////////////////////////// HISTORIA PLANETA JUPITER

PImage Jupiter, Jupiter2, Jupiterfinal;

//////////////////////////// CREDITOS

PImage botonretorno;

void setup () {

  size (800, 600);

//////////////////////////// PANTALLA INICIO
  estado = "inicio";  
  Tierra = loadImage ( "ciudad.jpg" );
  imageMode ( CENTER );
  Nave = loadImage ( "nave.png" );
  Titulo = loadFont ( "AgencyFB-Bold-48.vlw" );
  Dialogo = loadFont ( "ArialUnicodeMS-48.vlw" );
  Astronauta = loadImage ( "astronautaunou.png" );
  Pasto = loadImage ( "pasto.png" );
  Botoniniciar = loadImage ( "botoniniciar.jpg" );

 //////////////////////////// PANTALLA DESPEGE
  Galaxia = loadImage ( "galaxia.jpg" );
  Navedos = loadImage ( "navedos.png" );
  Astronauta2 = loadImage ( "astronautahablando.png" );
  planetatierra = loadImage ( "planeta-tierra.png" );
  posx = 100;
  posy = 600; 
  tamanio = 30;


 //////////////////////////// PANTALLA SISTEMA SOLAR
  Sistemasolar = loadImage ( "sistemasolar.jpg" );


 //////////////////////////// HISTORIA PLANETA MARTE
  Marte = loadImage ( "marte.jpg" );
  Meteorito = loadImage ( "meteoritou.png" );
  Navetres = loadImage ( "navehorizontal.png" );
  astronauta3 = loadImage ( "astronautaasustado.png" );
  astronautatres = loadImage ( "astronautamuerto.png" );
  Fondomarte = loadImage ( "martefondo.jpg" );
  Nuevoplaneta = loadImage ( "nuevoplaneta.jpg" );
  pantalla = loadImage ( "botoncreditos.jpg" );

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

  posX6 = 340 ;
  posY6 = -50 ;
  posX7 = 230 ;
  posY7 = -250 ;
  posX8 = 250 ;
  posY8 = -450 ;

  tamX1 = 250;
  tamY1 = 250;

//////////////////////////// HISTORIA PLANETA JUPITER

  Jupiter = loadImage ( "jupiter.jpg" );
  Jupiter2 = loadImage ( "jupiterextraterrestres.jpg" );
  Jupiterfinal = loadImage ( "jupiterfinal.jpg" );

//////////////////////////// CREDITOS

  botonretorno = loadImage ( "botonretorno.jpg" );
}


void draw () {

  //////////////////////////// PANTALLA INICIO
  if ( estado.equals( "inicio" ) ) {
    image ( Tierra, width/2, height/2-100, 800, 600 );
    image ( Pasto, width/2, 450, 800, 150 );
    image ( Pasto, width/2, 500, 800, 150 );
    image ( Pasto, width/2, 550, 800, 150 );
    image ( Nave, 200, 350, 450, 450 );
    image ( Astronauta, width/2, 430, 200, 200 );
    image ( Botoniniciar, width/2, 550, 200, 40 );

    textFont ( Titulo );
    textSize ( 70 );
    fill ( 0 );
    text ( "VIAJE ESPACIAL", 231, 86 );
    fill ( 230, 230, 45 );
    text ( "VIAJE ESPACIAL", 235, 80 );
    fill ( 230, 230, 45 );
    triangle ( 430, 360, 530, 350, 480, 330 );
    noStroke();
    ellipse ( 530, 270, 300, 160 );
    noStroke ();
    textFont ( Dialogo );
    textSize ( 16 );
    fill ( 0 );
    text ( "   Bienvenidx a este viaje espacial!", 415, 250 );
    textSize ( 15 );
    text ( "Soy Calvin y fui elegido para recorrer\n   el espacio. Junto con mi nave \nintentaremos conocer algún planeta", 415, 272 );
  }

  ////////////////////////////// PANTALLA DESPEGUE

  else if ( estado.equals("despegue" ) ) {

    //Galaxia
    image ( Galaxia, width/2, height/2, 800, 600 );
    image ( planetatierra, 0, 600 );
    image ( Navedos, posx, posy, tamanio, tamanio );

    posx += 6;
    posy -= 8;
    tamanio = tamanio + 3;

    image ( Astronauta2, 450, 500, 100, 100 );
    triangle ( 480, 510, 580, 500, 530, 480 );
    noStroke();
    ellipse ( 638, 455, 230, 170 );
    noStroke ();
    fill ( 0 );
    textSize ( 15 );
    text ("       3..2..1..DESPEGUE! \n\n Esta aventura será fabulosa \n Pulsa la barra espaciadora \n para continuar el viaje ", 550, 420 );
    fill ( 230, 230, 45 );
  } 
  ///////////////////////////// PANTALLA SISTEMA SOLAR

  else if ( estado.equals("sistema solar" ) ) {

    //Sistema Solar
    background ( 0 );
    image ( Sistemasolar, width/2, height/2, 900, 500 );
    image ( Astronauta2, 450, 500, 100, 100 );
    fill ( 230, 230, 45 );
    triangle ( 480, 510, 580, 500, 550, 480 );
    noStroke ();
    ellipse ( 660, 455, 260, 150 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 14 );
    text ( "      Desde acá la vista es increíble! \n\n Ahora tú decides a qué planeta iremos \n   Haz click en Marte o Jupiter para  \n      emprender el recorrido", 545, 430 );
    fill ( 230, 230, 45 );
    textFont ( Titulo );
    textSize ( 20 );
    fill ( 255 );
    text ( "MARTE", 294, 272 );
    text ( "JUPITER", 430, 222 );
  }

  /////////////////////////////////  PLANETA MARTE LLUVIA DE METEORITOS

  else if ( estado.equals( "Marte" ) ) {

    image ( Marte, width/2, height/2, 800, 600 );
    image ( Meteorito, posX1, posY1, 50, 50 );
    posX1 = posX1 - 3 ;
    posY1 = posY1 + 3 ;
    image ( Meteorito, posX2, posY2, 80, 80 );
    posX2 = posX2 - 3 ;
    posY2 = posY2 + 3 ;
    image ( Meteorito, posX3, posY3, 70, 70 );
    posX3 = posX3 - 3 ;
    posY3 = posY3 + 3 ;
    image ( Meteorito, posX4, posY4, 150, 150 );
    posX4 = posX4 - 3 ;
    posY4 = posY4 + 3 ;
    image ( Navetres, posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 7;
    tamX1 -= 1.5;
    tamY1 -= 1.5;
    image ( astronauta3, 450, 500, 100, 100 );
    triangle ( 480, 510, 580, 500, 530, 480 );
    noStroke();
    ellipse ( 630, 450, 260, 160 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 15 );
    text ( " Oh! no me esperaba esta lluvia \n de meteoritos. Que hacemos? \n Pulsa:\n           A para continuar viaje o \n           B para desviarnos", 518, 430 );
    fill ( 230, 230, 45 );
  }


  ///////////////////////////////// HISTORIA NAVE ROTA EN MARTE

  else if ( estado.equals( "naverota" ) ) {

    image ( Fondomarte, width/2, height/2 );
    image ( astronautatres, 450, 500, 100, 100 );
    triangle ( 480, 510, 580, 500, 550, 480 );
    noStroke ();
    ellipse ( 615, 450, 220, 115 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 18 );
    text ( "Diganle a mi familia \n que los quiero", 535, 450 );
    fill ( 230, 230, 45 );
    image ( pantalla, width/2, 100, 250, 75 );
  }


  ///////////////////////////////// HISTORIA NUEVO PLANETA ENCONTRADO

  else if ( estado.equals("nuevoplaneta" ) ) {

    image ( Nuevoplaneta, width/2, height/2, 800, 600);
    image ( Astronauta2, 450, 500, 100, 100 );
    triangle ( 480, 510, 580, 500, 530, 480 );
    noStroke ();
    ellipse ( 635, 460, 240, 125 );
    noStroke ();
    fill (0);
    textFont ( Dialogo );
    textSize ( 15 );
    text ( "Que es eso? Parece que\nhemos encontrado un nuevo\n planeta!! Gracias a tu ayuda\n          hicimos un nuevo \n         descubrimiento", 542, 435 );
    fill ( 230, 230, 45 );
    image ( pantalla, width/2, 80, 250, 75 );
  }



  ///////////////////////////////// HISTORIA PLANETA JUPITER

  else if ( estado.equals("Jupiter" ) ) {

    image ( Jupiter, width/2, height/2, 800, 600 );
    image ( Astronauta2, 150, 500, 100, 100 );
    triangle ( 180, 510, 280, 500, 230, 480 );
    noStroke();
    ellipse ( 330, 450, 230, 130 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 15 );
    text ( "Después de varios días de\nrecorrido hemos llegado!\nHaz click en el planeta Jupiter\npara aterrizar", 243, 430 );
    fill ( 230, 230, 45 );
    image ( Navetres, posX5, posY5, tamX1, tamY1 );
    posX5 = posX5 + 4;
    tamX1 -= 1;
    tamY1 -= 1;
  } 

  ////////////////////////////////// HISTORIA PLANETA JUPITER - ATERRIZAR

  else if ( estado.equals( "aterrizar" ) ) {

    image ( Jupiter2, width/2, height/2, 800, 600 );
    image ( astronauta3, 450, 120, 100, 100 );
    triangle (480, 130, 680, 130, 630, 100 );
    noStroke ();
    ellipse ( 660, 80, 230, 130 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 15 );
    text ( "Lo hemos lograddd...eh? \nespera, que es eso verde?\nParece que no estamos solos\nApreta C para ir a hablarles", 570, 55 );
    fill ( 230, 230, 45 );
  }




  //////////////////////////////////// HISTORIA PLANETA JUPITER - CONOCER EXTRATERRESTRES

  else if ( estado.equals( "conocerextraterrestres" ) ) {

    image ( Jupiterfinal, width/2, height/2, 800, 600 );
    image ( astronautatres, 450, 120, 100, 100 );
    triangle ( 480, 130, 680, 130, 630, 100 );
    noStroke ();
    ellipse ( 660, 80, 260, 100 );
    noStroke ();
    fill ( 0 );
    textFont ( Dialogo );
    textSize ( 18 );
    text ( "Hola! vengo en son de paa...\nAAAAAAAHHHHHHH", 555, 75 );
    fill ( 230, 230, 45 );  
    image ( pantalla, 150, 80, 250, 75 );
  }



  /////////////////////////////////// CREDITOS

  else if ( estado.equals("creditos") ) {

    image ( Galaxia, width/2, height/2, 800, 600 );
    fill ( 255 );
    textSize ( 80 );
    text ( "F I N", posX6, (posY6) + 40 );
    posY6 += 4;
    textSize ( 40 );
    text ( "Reynoso, Jorgelina", posX7, posY7 );
    posY7 += 2;
    textSize ( 30 );
    text ( "  Tecnologia Multimedial 1", posX7, ( posY7 ) + 40 );
    posY7 += 2;
    textSize ( 35 );
    text ( "Universidad Nacional de La Plata", posX8-120, posY8 );
    posY8 += 2 ;
    textSize ( 28 );
    text ( "   Facultad de Artes", posX8+20, ( posY8 ) + 40 );
    posY8 += 2;
    image ( botonretorno, width/2, 500, 250, 75 );
  }
}

void keyPressed() {

  if ( key == ENTER ) {
    //CAMBIO de ESTADO: "INICIO" -> "DESPEGUE"
    estado = "inicio";
  }

  if ( key == ' ' ) {
    //CAMBIO de ESTADO: "DESPEGUE" -> "SISTEMA SOLAR"
    estado = "sistema solar"; posx = 100; posy = 600; tamanio = 30;
  }  

  

  if ( key == 'a' ) {
    //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "SEGUIR VIAJE A MARTE"
    estado = "naverota";
  }

  if ( key == 'b' ) {
    //CAMBIO de ESTADO: "LLUVIA DE METEORITOS" -> "DESVIARNOS"
    estado = "nuevoplaneta";
  }


  if ( key == 'c' ) {
    //CAMBIO de ESTADO: "ATERRIZAR" -> "HABLAR A LOS EXTRATERRESTRES"
    estado = "conocerextraterrestres";
  }


  if ( key == BACKSPACE ) {posX6 = 340 ; posY6 = -50 ;
  posX7 = 230 ; posY7 = -250 ; posX8 = 250 ; posY8 = -450 ;
    //CAMBIO de ESTADO: "FINALES DE HISTORIA" -> "CREDITOS"
    estado = "creditos";
  }
} 


void mousePressed() {

  //CUANDO: hago clic sobre el el boton de iniciar
  if ( mouseX > 299 && mouseX < 500 && mouseY > 528 && mouseY < 571 ) {
    //INICIO AVENTURA: "despegue"
    estado = "despegue";
  }

  //CUANDO: hago clic sobre Marte
  if ( mouseX > 287 && mouseX < 343 && mouseY > 242 && mouseY < 342 ) {posX1 = 450; posY1 = 0; 
  posX2 = 500; posY2 = -400 ; posX3 = 550 ; posY3 = 300 ; posX4 = 900 ; posY4 = -200 ; posX5 = 0 ; posY5 = 250 ;
  tamX1 = 250; tamY1 = 250;
    //CAMBIO de ESTADO: "sistema solar" -> "Marte"
    estado = "Marte";
  }

  //CUANDO: hago clic sobre Jupiter
  if ( mouseX > 377 && mouseX < 537 && mouseY > 191 && mouseY < 390 ) {
    //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
    estado = "Jupiter";
  }

  //CUANDO: hago clic sobre el planeta Jupiter para aterrizar
  if ( mouseX > 550 && mouseX < 800 && mouseY > 10 && mouseY < 590 ) {
    //CAMBIO de ESTADO: "sistema solar" -> "Jupiter"
    estado = "aterrizar"; posx = 100; posy = 600; tamanio = 30;
  }

  println (mouseX+"X"+","+mouseY+"Y");
  println (estado);
}
