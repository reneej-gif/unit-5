void game() {
  theme.pause();
  background(0);
  timer=timer-1;

  //display
  fill(255);
  textSize(20);
  text("Score: " + score, 80, 30);
  text("Lives: " + lives, width - 80, 30);


  //paddles
  noStroke();
  fill(255);
  circle(paddlex, paddley, paddled);

  //movepaddle
  if (akey==true || leftkey==true) paddlex=paddlex-10;
  if (dkey==true || rightkey==true)paddlex=paddlex+10;

  //ball
  fill(255);
  circle(ballx, bally, balld);

  //movement
  if (timer<0) {
    ballx=ballx+vx;
    bally=bally+vy;
  }
  if (paddlex<paddled/2+balld) paddlex=paddled/2+balld;
  if (paddlex>width-paddled/2-balld) paddlex=width-paddled/2-balld;

  if (bally>height) {
    lives--;
    failure.rewind();
    failure.play();
    if (lives<=0) {
      mode = GAMEOVER;
    } else {
      resetRound();
    }
  }
  //boucing
  if (bally<balld/2) {
    vy=vy*-1;
  }
  if (ballx<balld/2 || ballx>width-balld/2) {
    vx=vx*-1;
  }

  if (dist(ballx, bally, paddlex, paddley)<paddled/2+balld/2) {
    vx=(ballx-paddlex)/5;
    vy=(bally-paddley)/5;
  }

  //brick
  int i=0;
  while (i<n ) {
    if (alive[i]==true) {
      manageBrick(i);
    }
    i++;
  }

  if (score==n) mode=GAMEOVER;
}




void gameClicks() {
  mode = PAUSE;
}

void manageBrick(int i) {
  if (y[i]==100) fill(red);
  if (y[i]==200) fill(yellow);
  if (y[i]==300) fill(green);
  if (y[i]==400) fill(blue);
  circle(x[i], y[i], brickd);
  if (dist(ballx, bally, x[i], y[i])<brickd/2+balld/2) {
    vx=(ballx-x[i])/5;
    vy=(bally-y[i])/5;
    alive[i]= false;
    score++;
    success.rewind();
    success.play();
  }
}
