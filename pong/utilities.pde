void resetGame(){
  lefty=height/2;
  righty=height/2;
  leftscore=0;
  rightscore=0;
  
}

void resetRound(){
   float startDirection = random(-3, 3);
  if (random(1) > 0.5) {
    vx = 3; 
  } else {
    vx = -3;
  }
  vy = startDirection;
}

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
  rect(x,y,w,h,10);
  fill(0);
  text(text, x, y);
}
void circleButton(float x, float y, float r) {
  tactile(x, y,r);
  circle(x, y, r);
}
void tactile(float x, float y,float r) {
  if (dist(x, y, mouseX, mouseY)<r/2) {
    stroke(255,0,0);
  } else {
    stroke(0);
  }
}


void drawtext(String t, float x, float y, int shadow, int main) {
  fill(shadow);
  text(t, x+6, y+6);
  fill(main);
  text(t, x, y);
}
