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
  noFill();
 p = kirby;
 image(p, 400-r/2,525-r/2,r,r);
   r=map(sliderY, 400, 650, 30, 320);
   strokeWeight(5);
    circle(400,525,r*1.15);
 
   
   //ok
   rectButton("OK", 650,700,100,50);
}

void optionsClicks(){
 if(mouseX>125&&mouseX<275 && mouseY>225 && mouseY<275){
   p = mushroom;
 }
 if(mouseX>600 && mouseX<700 && mouseY>675 && mouseY<725){
   mode = INTRO;
 }
}
