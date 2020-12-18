
void setup () {
  size ( 400, 400 );
  background ( 255 );
  stroke ( 255 ); 
  fill ( RGB );
  strokeWeight ( 2 );
 }
  
void draw () {

// 2do cuadrante 
fill ( 255, 0, 0 );
triangle ( 200, 200, 200, 53, 274, 73 );

fill ( 255, 0, 125 );
triangle ( 200, 200, 327, 126, 274, 73 );

fill ( 255, 0, 255 );
triangle ( 200, 200, 327, 126, 350, 200 );

//3er cuadrante   
fill ( 125, 0, 255 );
triangle ( 200, 200, 327, 274, 350, 200 );

fill ( 0, 0, 255 );
triangle ( 200, 200, 327, 274, 274, 327 );

fill ( 0, 125, 255 );
triangle ( 200, 200, 200, 350, 274, 327 );

//4to cuadrante
fill ( 0, 255, 255 );
triangle ( 200, 200, 200, 350, 126, 327 );

fill (0, 255, 125 );
triangle ( 200, 200, 73, 274, 126, 327 );

fill ( 0, 255, 0 );
triangle ( 200, 200, 73, 274, 50, 200 );

//1er cuadrante
fill ( 125, 255, 0 );
triangle ( 200, 200, 53, 200, 73, 126 );

fill ( 255, 255, 0 );
triangle ( 200, 200, 73, 126, 126, 73 );

fill ( 255, 125, 0 );
triangle ( 200, 200, 200, 53, 126, 73 );



fill(255,255,255);
ellipse (200,200,150,150);

 }
