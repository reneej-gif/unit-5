void game(){
  
  
  background(0,255,0);
  
  
  //pause
  stroke(0);
  fill(255);
  circle(100,100,100);
  
  
  fill(0);
  text("Score: " + score, width/2,50);
  text("Lives: "+lives, width/2,100);
  
  fill(255);
  strokeWeight(5);
  ellipse(x,y,100,100);
  
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
  if(dist(mouseX,mouseY,x,y)<d/2){
    score = score+1;
    success.rewind();
    success.play();
  }else if(dist(mouseX,mouseY,100,100)<50){
  mode = PAUSE;
  }else{
    lives = lives-1;
    failure.rewind();
    failure.play();
    if(lives==0) mode=GAMEOVER;
  }
}
