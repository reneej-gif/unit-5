void gameover() {
  image(gif[f], 0, 0, width, height);
  println(frameCount);
  if (frameCount % 2==0) f=f+1;
  if (f==numberOfFrames) f=0;

  fill(255);
  textSize(60);

  if (score == n) {
    drawtext("YOU WIN!", width/2, height/2, 255, green);
  } else {
    drawtext("GAME OVER", width/2, height/2, 255, red);
  }

  fill(255);
  textSize(20);
  text("Click to return to Main Menu", width/2, height/2 + 70);
}
void gameoverClicks() {
  theme.rewind();
  mode = INTRO;
  resetGame();
}
