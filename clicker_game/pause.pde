void pause(){
theme.pause();
textSize(50);
text("PAUSE", 400,400);

circleButton(100,100,100);
triangle(90,80,90,120,120,100);
}

void pauseClicks(){
  if(dist(mouseX,mouseY,100,100)<50){
  mode = GAME;
  }
}
