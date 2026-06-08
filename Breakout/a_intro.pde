void intro() {
  resetGame();
  a=a+speed;
  image(gif[f], 0, 0, width, height);

  if (a > 150 || a < 90) {
    speed = speed * -1;
  }

  println(frameCount);
  if (frameCount % 2==0) f=f+1;
  if (f==numberOfFrames) f=0;

  textSize(a);
  drawtext("Breakout!!", width/2, height/2, red, neon);
}
void introClicks() {
  mode = GAME;
}
