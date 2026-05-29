void pause(){
theme.pause();
textSize(50);
drawtext("PAUSED", width/2, height/2, color(0), color(255));

circleButton(100,100,100);
stroke(0);
triangle(90,80,90,120,120,100);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,100,100)<50){
  mode = GAME;
  theme.play();
  }
}
