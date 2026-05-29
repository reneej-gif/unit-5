void game() {
  theme.pause();

  //paddles
  noStroke();
  fill(0, 255, 255);
  circle(leftx, lefty, leftd);
  fill(255, 0, 255);
  circle(rightx, righty, rightd);

  //cneter line
  strokeWeight(5);
  stroke(255);
  line(width/2, 0, width/2, height);

  //move paddles
  if (wkey==true) lefty = lefty-6;
  if (skey==true) lefty=lefty+6;
  if(upkey==true) righty=righty-6;
  if(downkey==true) righty=righty+6;
  if (AI == true) {
    upkey=false;
    downkey=false;
    if (ballx > width/2) {
      if (bally < righty) righty = righty-4;
      if (bally > righty) righty =righty+4;
    }
  }

  //ball
  fill(255);
  circle(ballx, bally, balld);

  //movement
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }

  //restriction
  if(lefty<leftd){
   lefty=leftd;
  }else if(lefty>height-leftd){
   lefty=height-leftd;
  }
   if(righty<leftd){
  righty=rightd;
  }else if(righty>height-leftd){
   righty=height-rightd;
  }



  //scorecount
  textSize(50);
  fill(222, 43, 43);
  text(leftscore, width/4, 100);
  fill(26, 206, 10);
  text(rightscore, 3*width/4, 100);
  // text(timer, 3*width/4, 550);
  timer=timer-1;

  //scoring
  if (ballx<0) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
  resetRound();
    timer=100;
    failure.rewind();
    failure.play();
  }
  if (ballx>800) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=100;
   resetRound();
    failure.rewind();
    failure.play();
  }



  //boucning
  if (bally<balld/2 || bally>height-balld/2) {
    vy=vy*-1;
  }

  if ( dist(ballx, bally, leftx, lefty)<leftd/2+balld/2) {
    vx=(ballx-leftx)/10;
    vy=(bally-lefty)/10;
    success.rewind();
    success.play();
    
  }

  if (dist(ballx, bally, rightx, righty)<rightd/2+balld/2) {
    vx=(ballx-rightx)/10;
    vy=(bally-righty)/10;
     success.rewind();
    success.play();
  }
  
  //win
  if (leftscore >= 3 || rightscore >= 3) {
    mode = GAMEOVER;
  }
  
}

void gameClicks() {
  mode = PAUSE;
}
