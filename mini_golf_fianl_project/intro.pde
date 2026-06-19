void intro() {
  background(200, 220, 255);
  textSize(60);
  fill(0);
  text("2 PLAYER MINI GOLF", 400, 300);

  rectButton("START", 400, 550, 200, 100);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    resetGame();
    mode = GAME;
  }
}
