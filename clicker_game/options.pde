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

 image(p, 400-r/2,525-r/2,r,r);
   r=map(sliderY, 400, 650, 30, 320);
   strokeWeight(5);
    circle(400,525,r*1.15);
 
   //text
     text("OPTIONS",400,90);
   //ok
   rectButton("OK", 650,700,100,50);
}

void optionsClicks(){
 if(mouseX>75&&mouseX<225 && mouseY>175 && mouseY<325){
   p = mushroom;
 }else if(mouseX>575 && mouseX<725 && mouseY>175 && mouseY<325){
   p=star;
 }else if(mouseX>325 && mouseX<475 && mouseY>175 && mouseY<325){
   p = kirby;
 }
 if(mouseX>600 && mouseX<700 && mouseY>675 && mouseY<725){
   mode = INTRO;
 }
}
