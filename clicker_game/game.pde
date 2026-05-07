void game(){
  background(0,255,0);
  circle(x,y,d);
  
  //movig
  x=x+vx;
  y=y+vy;
  
  //bounce
   if(x<d/2 || x>width-d/2){
     vx=vx*-1;
   }
   if(y<d/2 || y>height-d/2){
     vy=vy*-1;
   }
}


void gameClicks(){
  mode = GAMEOVER;
}
