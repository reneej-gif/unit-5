
void game(){
  
  
  background(200);
  
  
  //pause
  stroke(0);
  fill(255);
  circleButton(100,100,100);
  line(90,80,90,120);
  line(110,80,110,120);
  
  
  fill(0);
  textSize(30);
  text("Score: " + score, width/2,50);
  text("Lives: "+lives, width/2,100);
  
  //ball
  fill(255);
  strokeWeight(5);
  circle(x,y,r*1.15);
  image(p, x-r/2,y-r/2,r,r);

  
  
  //movig
  x=x+vx;
  y=y+vy;
  
  //bounce
   if(x<r*1.15/2 || x>width-r*1.15/2){
     vx=vx*-1;
   }
   if(y<r*1.15/2 || y>height-r*1.15/2){
     vy=vy*-1;
   }
}


void gameClicks(){
  if(dist(mouseX,mouseY,x,y)<r*1.15/2){
    score = score+1;
    vx=vx*1.1;
    vy=vy*1.1;
    success.rewind();
    success.play();
  }else if(dist(mouseX,mouseY,100,100)<50){
  mode = PAUSE;
  }else{
    lives = lives-1;
    failure.rewind();
    failure.play();
    if(lives<=0) mode=GAMEOVER;
  }
}
