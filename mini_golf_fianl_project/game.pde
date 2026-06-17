void game(){
  if(player == 1){
    background(red);
  }else{
    background(blue);
  }
  
  noStroke();
  fill(green);
  strokeWeight(3);
  stroke(255);
  rect(400,400,700,height);
  

  
  //hole
  stroke(80);
  fill(0);
  circle(holex,holey,holed);
  
  //movement
  ballx = ballx+bvx;
  bally=bally+bvy;
  bvx=bvx*0.98;
  bvy=bvy*0.98;
  if(abs(bvx)<0.1 && abs(bvy) < 0.1){
    bvx = 0;
    bvy = 0;
  }
  
 
  drawCourse();
 
 
  
  //indicator
  if(aiming == true){
    drawIndicator();
  }
  
   //ball
  noStroke();
  if(player == 1) fill(red);
  else fill(blue);
  circle(ballx,bally,balld);
  
  
  //stroke number
  textAlign(CENTER, TOP);
  text("Hole: " +currentHole+ "/5", 400, 30);
  text("Strokes: " +strokes, 400, 70);
  
  // score setup
  fill(255);
   textSize(30);
  textAlign(LEFT, TOP);
  text("Red Score: " + redstrokes, 30, 30);
  textAlign(RIGHT, TOP);
  text("Blue Score: " + bluestrokes, width-30, 30);
  
  if(dist(ballx, bally, holex, holey)<holed/2){
    score();
    
  }
 
}
void gameClicks(){
  
}
