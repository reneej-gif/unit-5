void pause(){
theme.play();
background(73,214,140);
  textSize(80);
  drawtext("PAUSED", width/2, height/2-60 , color(30), color(255));
  textSize(30);
  text("Click anywhere to resume", width/2, height/2 + 40);
}
void pauseClicks(){
mode = GAME;
}
