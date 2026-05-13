void rectButton(String text, float x, float y, float w, float h){
  if(mouseX>x-w/2 && mouseX<x+w/2 && mouseY>y-h/2 && mouseY<y+h/2){
    strokeWeight(10);
    stroke(255,0,0);
    fill(255);
  }else{
    strokeWeight(2);
    stroke(0);
    fill(255);
  }
  textSize(50);
  rect(x,y,w,h);
  fill(0);
  text(text, x, y);
}
void reset(){
  //socre
  score = 0;
  lives = 3;
  //targets
  x= width/2;
  y=height/2;
   vx=random(-5, 5);
  vy=random(-5, 5);
}

//void rectButton(PImage pic, float x, float y, float w, float h){
  //if(mouseY>
