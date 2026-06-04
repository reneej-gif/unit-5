void game() {

  background(0);
  timer=timer-1;

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
  if (paddlex<paddled/2) paddlex=paddled/2;
  if (paddlex>width-paddled/2) paddlex=width-paddled/2;

  if (bally>height) {
    life--;
    ballx=width/2;
    bally=height/2+100;
    timer=100;
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
   circle(x[i],y[i],brickd);
     if (dist(ballx, bally,x[i], y[i])<brickd/2+balld/2) {
    vx=(ballx-x[i])/5;
    vy=(bally-y[i])/5;
     }
    i++;
  }
}




void gameClicks() {
}

void manageBrick(int i) {
  
}
