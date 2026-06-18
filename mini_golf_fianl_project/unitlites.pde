



void drawCourse(){
  wall(400,10,800,20);
  wall(400,790,800,20);
  wall(50,400,20,800);
  wall(750,400,20,800);
  
  if(currentHole == 1){
    wall(200,500,550,50);
    wall(700,250,550,50);
  }else if(currentHole == 2){
    wall(400,400,400,50);
  }else if(currentHole == 3){
    wall(200,400,100,500);
    wall(400,400,100,500);
    wall(600,400,100,500);
  }else if(currentHole == 4){
    wall(400,600,400,50);
    wall(225,400,50,400);
    wall(575,400,50,400);
  }else if(currentHole == 5){
    wall(200,600,30,100);
    wall(600,600,30,100);
    wall(400,300,150,30);
    fill(250,223,68);
    circle(400,500,200);
    if (dist(ballx, bally, 400, 500)<=100+balld/2) {
    bvx=(ballx-400)/5;
    bvy=(bally-500)/5;
    
  }
  }
  
}

void drawHole(){
  bvx=0;
  bvy=0;
  if (currentHole == 1){
    startx = 100; starty = 700; holex = 700; holey = 100;
  }else if (currentHole == 2){
    startx = 400; starty = 700; holex = 400; holey = 100;
  }else if (currentHole == 3){
    startx = 400; starty = 700; holex = 400; holey = 100;
  }else if (currentHole == 4){ 
    startx = 400; starty = 700; holex = 400; holey = 300;
  }else if (currentHole == 5){
    startx = 400; starty = 750; holex = 400; holey = 200;
  }
  
  ballx=startx;
  bally=starty;
  
}
  

void wall(float x, float y, float w, float h){
  fill(255);
  noStroke();
  rect(x, y, w, h);
  
  if(ballx+balld/2 > x-w/2 && ballx-balld/2 < x+ w/2 && bally+balld/2> y-h/2 && bally-balld/2 < y+h/2){
    if(sidex+balld/2 <= x-w/2 || sidex-balld/2>=x+w/2){
      bvx=bvx*-1;
      ballx=sidex;
    }
    if(sidey+balld/2<=y-h/2 || sidey-balld/2 >= y+h/2){
      bvy = bvy*-1;
      bally=sidey;
    }
  }
}



void score(){
  if (player == 1) {
    redstrokes += strokes;
    player = 2; 
    strokes = 0;
    drawHole(); 
   
  } else {
    bluestrokes += strokes;
    player=1;
    strokes = 0;
    currentHole++; 
    drawHole();

    if (currentHole > 5) mode = GAMEOVER; 
    else drawHole(); 
  }
}
  
  
void resetGame() {
  player = 1;
  currentHole = 1;
  redstrokes = 0;
  bluestrokes = 0;
  strokes = 0;
  drawHole();
}
  
void drawIndicator(){
  strokeWeight(20);
  stroke(255,80);
  line(ballx, bally, mouseX,mouseY);
}
  
  
  
  
  
   
