void mouseReleased(){
   if (mode==INTRO){
    introClicks();
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 350 - 50 && mouseY < 350 + 50) {
    success.rewind();
      success.play();
      AI = true;
      mode = GAME;
    }
    if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > 500 - 50 && mouseY < 500 + 50) {
    success.rewind();
      success.play();
      AI = false;
      mode = GAME;
    }
  }else if (mode==GAME){
    gameClicks();
  }else if(mode==PAUSE){
    pauseClicks();
  }else if (mode == GAMEOVER){
    gameoverClicks();
  }
}
