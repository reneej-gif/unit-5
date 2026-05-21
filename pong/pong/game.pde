void game() {

  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);

  //move paddles
  if (wkey==true) lefty = lefty-5;
  if (skey==true) lefty=lefty+5;
  if (upkey==true) righty = righty-5;
  if (downkey==true) righty=righty+5;

  //ball
  circle(ballx, bally, balld);

  //movement
  ballx=ballx+vx;
  bally=bally+vy;
  
  //scorecount
  
  
  
  //scoring
  if(ballx<0){
    rightscore++;
    ballx=width/2;
    bally=height/2;
  }
    if(ballx>800){
    leftscore++;
    ballx=width/2;
    bally=height/2;
  }
  
  
  
  
  
  
  
  //boucning
  if (bally<balld/2 || bally>height-balld/2) {
    vy=vy*-1;
  }
  
  if ( dist(ballx, bally, leftx, lefty)<leftd/2+balld/2) {
    vx=(ballx-leftx)/20;
    vy=(bally-lefty)/20;
  }
  
   if (dist(ballx, bally, rightx, righty)<rightd/2+balld/2) {
    vx=(ballx-rightx)/20;
    vy=(bally-righty)/20;
  }
  
}

void gameClicks() {
}
