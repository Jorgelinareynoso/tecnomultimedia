class Auto{
  
 float x, y, tx, ty; 

 Auto (float x1, float y1, float tx1, float ty1){
 x = x1;
 y = y1;
 tx = tx1;
 ty = ty1;
}

  
void imagen (){
  
  image (auto, x, y, tx, ty);
}


 void movMouse(){
  x = mouseX;
  y = mouseY;
}

}
