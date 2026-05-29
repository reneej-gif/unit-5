void gameover(){
  background(200,40,40);
  theme.pause();
  theme.rewind();
  textSize(120);
  drawtext("GAME OVER", 400, 300, color(50, 0, 0), color(255));
  
  textSize(60);
  drawtext("High Score: " + highscore, 400, 500, color(50, 0, 0), color(255, 200, 0));
 
}

void gameoverClicks(){
 mode = INTRO;
reset();
}
