void gameover(){
  background(255,0,0);
  theme.pause();
  text("GAME OVER", 400,300,100);
  if(score>highscore){
    highscore = score;
  }
  text("High Score: "+highscore, 400,500,80);
 
}

void gameoverClicks(){
 mode = INTRO;
reset();
}
