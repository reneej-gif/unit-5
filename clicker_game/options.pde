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
  strokeWeight(2);
  stroke(25);
  line(150, 400, 150, 650);
  circleButton(150,sliderY, 30);
  stroke(25);
  
  //indicator
  p = kirby;
  noFill();
  circle(400,525,r);
 image(p, 320,525-r/2,r,r);
   r=map(sliderY, 400, 650, 30, 350);
}

void optionsClicks(){
 if(mouseX>125&&mouseX<275 && mouseY>225 && mouseY<275){
   p = mushroom;
 }
}
