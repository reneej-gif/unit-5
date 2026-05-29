void gameover(){
 theme.play();
  textSize(80);
  if (leftscore >= 3) {
   drawtext("LEFT WINS!", width/2, height/2 - 50, color(0, 100, 100), color(0, 255, 255));
  } else {
    drawtext("RIGHT WINS!", width/2, height/2 - 50, color(100, 0, 100), color(255, 0, 255));
  }
  
  textSize(30);
  fill(255);
  text("Click to return to Main Menu", width/2, height/2 + 70);
}
void gameoverClicks(){
  mode=INTRO;
  resetGame();
}
