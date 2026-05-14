void options(){
  background(255);
  fill(255);
  stroke(0);
  strokeWeight(2);
  //buttons
  rectButton(mushroom, 150,250,150,150); 
  rectButton(kirby, 400,250,150,150);
  rectButton(star, 650,250,150,150);
  
  //slider
  fill(0);
  stroke(25);
  line(150, 400, 150, 650);
  circleButton(150,sliderY, 30);
}

void optionsClicks(){
 
}
