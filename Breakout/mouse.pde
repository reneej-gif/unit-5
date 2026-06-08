void mousePressed() {
  if (mode == INTRO) {
    mode = GAME;
  } else if (mode == GAME) {
    mode = PAUSE;
  } else if (mode == PAUSE) {
    mode = GAME;
  } else if (mode == GAMEOVER) {
    resetRound();
    mode = INTRO;
  }
}
