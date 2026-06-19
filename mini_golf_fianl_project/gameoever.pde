void gameover(){
  background(50);
  textSize(60);
  
  if (redstrokes < bluestrokes) {
    fill(255, 100, 100); text("RED WINS!", 400, 250);
  } else if (bluestrokes < redstrokes) {
    fill(100, 100, 255); text("BLUE WINS!", 400, 250);
  } else {
    fill(255); text("IT'S A TIE!", 400, 250);
  }

  fill(255);
  textSize(40);
  text("Red: " + redstrokes + " strokes", 400, 350);
  text("Blue: " + bluestrokes + " strokes", 400, 420);

  rectButton("PLAY AGAIN", 400, 600, 250, 100);
}

void gameoverClicks(){
  
}
