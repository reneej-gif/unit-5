void game(){
  if(player == 1){
    background(red);
  }else{
    background(blue);
  }
  fill(green);
  strokeWeight(3);
  stroke(255);
  rect(400,400,700,height);
  
  //ball
  fill(255);
  circle(ballx,bally,balld);
  
  //hole
  stroke(80);
  fill(0);
  circle(holex,holey,holed);
  
  //movement
  ballx = ballx+bvx;
  bally=bally+bvy;
  bvx=bvx*0.95;
  bvy=bvy*0.95;
  if(abs(bvx)<0.1 && abs(bvy) < 0.1){
    bvx = 0;
    bvy = 0;
  }
  
}
void gameClicks(){
  
}
