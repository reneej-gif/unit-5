void intro() {
  theme.play();

  background(180, 210, 255);
  noStroke();
  fill(255, 100);
  circle(150, 150, 200);
  circle(700, 600, 300);
  circle(650, 100, 100);


  textSize(120);
  drawtext("SUPER CLICKER", 400, 250, color(50, 100, 150), color(255));
  rectButton("START", 200, 600, 200, 100);
  rectButton("OPTIONS", 600, 600, 200, 100);
}
void introClicks() {
  if (mouseX>100 && mouseX<300 && mouseY>550 && mouseY<650) {
    mode = GAME;
  } else if ( mouseX>500 && mouseX<700 && mouseY>550 && mouseY<650) {
    mode = OPTIONS;
  }
}
