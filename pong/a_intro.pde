void intro() {
  theme.play();
  background(224, 206, 186);
  textSize(140);
  fill(255);
  drawtext("PONG", width/2, 150, color(120, 90, 70), color(255, 251, 247));
  
  rectButton("1 PLAYER", width/2, 350, 300, 100);
  rectButton("2 PLAYER", width/2, 500, 300, 100);
}

void introClicks() {
}
