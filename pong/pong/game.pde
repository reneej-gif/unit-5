void game() {

  //paddles
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  //cneter line
  strokeWeight(5);
  stroke(255);
  line(width/2,0,width/2,height);

  //move paddles
  if (wkey==true) lefty = lefty-5;
  if (skey==true) lefty=lefty+5;
  if(AI==false){
  if (upkey==true) righty = righty-5;
  if (downkey==true) righty=righty+5;
  }else{
    /*
    
    if ball on right side{
    if ball above right paddle, move up
    if ball below right paddle, move down
    }
    if ball on left side{
    right paddle no movement
    }   
    
    
    */
    
  }

  //ball
  circle(ballx, bally, balld);

  //movement
  if(timer<0){
  ballx=ballx+vx;
  bally=bally+vy;
  }
  if(lefty<leftd){
   lefty=lefty+5;
  }else if(lefty>height-leftd){
   lefty=lefty-5;
  }
   if(righty<leftd){
  righty=righty+5;
  }else if(righty>height-leftd){
   righty=righty-5;
  }
  
  
  //scorecount
  textSize(50);
  fill(222,43,43);
  text(leftscore, width/4, 100);
  fill(26,206,10);
  text(rightscore, 3*width/4, 100);
 // text(timer, 3*width/4, 550);
  timer=timer-1;
  
  //scoring
  if(ballx<0){
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
  }
    if(ballx>800){
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
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
