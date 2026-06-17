void mousePressed() {
  if (mode == INTRO) {
    mode = GAME;
  } else if (mode == GAME) {
    
  } else if (mode == PAUSE) {
    mode = GAME; 
  } else if (mode == GAMEOVER) {
    mode = INTRO; 
  }
  
  if (mode == GAME && bvx == 0 && bvy == 0){
    aiming = true;

  }
}

void mouseReleased(){
  if (aiming == true){
    aiming = false;
    powerx = ballx-mouseX;
    powery=bally-mouseY;
    bvx=powerx*0.1;
    bvy=powery*0.1;
    strokes++;
  }
 
}
