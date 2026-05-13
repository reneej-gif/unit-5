void intro(){
  theme.rewind();
  
  background(255);
  rectButton("START",200,600,200,100);
  rectButton("OPTIONS", 600,600,200,100);
  
}
void introClicks(){
 if (mouseX>100 && mouseX<300 && mouseY>550 && mouseY<650){
   mode = GAME;
 }else if( mouseX>500 && mouseX<700 && mouseY>550 && mouseY<650){
   mode = OPTIONS;
}
}
