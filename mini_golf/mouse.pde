void mousePressed() {
  if (mode == INTRO) {
    mode = GAME;
  } else if (mode == GAME) {
    mode = PAUSE; 
  } else if (mode == PAUSE) {
    mode = GAME; 
  } else if (mode == GAMEOVER) {
    mode = INTRO; 
  }
  
  
  if (mode == GAME && ballx == 0 && bally == 0){
    aiming = true;
  }
}

void mouseReleased(){
  if (aiming == true){
    aiming = false;
    powerx = ballx-mouseX;
    powery=bally-mouseY;
  }
}
