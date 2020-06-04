//declaro imagen de fondo
PImage fondo;

//declaro imagen del logo y variable tamanio
PImage logo;
float tamImagen;

//declaro fuente
PFont fuente;

//declaro variables
int posY;
int posY1;
int posY2;
int posY3;
int posY4;
int posY5;
int posY6;
int posY7;
int posY8;
int vel;

void setup () {

 size (800, 600);

 fondo = loadImage ( "SW1.jpg");
 
 logo = loadImage ("logo1.gif");
 imageMode (CENTER);
 tamImagen = 400;

fuente = loadFont("Arial-BoldMT-40.vlw");
textAlign (CENTER);

//asignación de variables

posY = 1200;
posY1 = 1500;
posY2 = 1800;
posY3 = 2100;
posY4 = 2230;
posY5 = 2360;
posY6 = 2400;
posY7 = 2420;
posY8 = 2440;

vel = 4;
}
  
void draw () {


//FONDO  
image ( fondo, width/2, height/2, 800, 800 );


//LOGO STAR WARS////////////////////////
textFont ( fuente );

image ( logo, width/2, height/2, tamImagen, tamImagen );
tamImagen = ( tamImagen/1.07 ) ;


//PRODUCCIÓN/////////////////////////////

fill ( frameCount*2, frameCount*2 );
text ( "J.J. ABRAMS", width/2, height/2+50 );

textSize ( 30 );
text ( "Direct by", width/2, height/2 );


//ACTORES Y COLABORACIONES //////////////////

fill ( #09B0D8 );  
textSize ( 20 );
text ( "SIMON EMANUEL", width/2 + 80, posY );
textSize ( 14 );
text ( "Unit Production Manager", width/3 , posY );
posY = posY - 4;

textSize ( 20 );
text ( "TOMMY HARPER", width/2 + 80, posY1 );
textSize ( 14 );
text ( "Unit Production Manager", width/3 , posY1 );
posY1 = posY1 - vel;

textSize ( 20 );
text ( "INDUSTRIAL LIGHT & MAGIC", width/2 , posY2 );
textSize ( 14 );
text ( "Visual effect & Animation by", width/2, posY2 - 30 );
posY2 = posY2 - vel;


textSize ( 20 );
text ( "PATRICK TUBACH \n BEN MORRIS",  width/2 , posY3 );
textSize ( 14 );
text ( "ILM Visual Effects", width/2, posY3 - 30 );
posY3 = posY3 - vel;

textSize ( 20 );
text ( "PAUL KAVANAGH",  width/2 , posY4 );
textSize ( 14 );
text ( "ILM Animation Supervisor", width/2, posY4 - 30 );
posY4 = posY4 - vel;

textSize (18);
text ("CAST",  width/2 , posY5);
posY5 = posY5 - vel;

textSize (20);
text ("HARRISON FORD", width/2 + 110, posY6);
textSize (14);
text ("Han Solo", width/3+ 53 , posY6);
posY6 = posY6 - vel;

textSize (20);
text ("MARK HAMILL", width/2 + 100, posY7);
textSize (14);
text ("Luke SkyWalker", width/3 + 39, posY7);
posY7 = posY7 - vel;

textSize (20);
text ("CARRIE FISHER", width/2 + 110, posY8);
textSize (14);
text ("Princess Leia", width/3+ 44 , posY8);
posY8 = posY8 - vel;

}
