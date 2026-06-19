void mousePressed() {
  if (mode == GAME) {
    if (bvx == 0 && bvy == 0 && timer<0) {
aiming = true;
    }
  }
}

void mouseReleased() {
   if (mode == INTRO) {
    introClicks();
  } else if (mode == PAUSE) {
    mode = GAME;
  } else if (mode == GAMEOVER) {
    resetGame();
    mode = INTRO;
  } else if (mode == GAME){
    if (aiming == true && timer<0) {
      aiming = false;
      powerx = ballx-mouseX;
      powery=bally-mouseY;
      bvx=powerx*0.1;
      bvy=powery*0.1;
      strokes++;
    }
  }
}
