void pause() {
  fill(0, 0, 0, 10);
  rect(width/2, height/2, width, height);
  textSize(100);
  drawtext("PAUSED", width/2, height/2, 255, neon);
  textSize(30);
  fill(255);
  text("Click to resume", width/2, height/2 + 100);
}
void pauseClicks() {
  mode=GAME;
}
