int mode;
final int INTRO=0;
final int GAMEOVER=3;
final int PAUSE=2;
final int GAME = 1;


//entity variables
float leftx, lefty, leftd, rightd, rightx, righty;//paddle
float ballx, bally, balld,vx,vy;
int rightscore, leftscore, timer;

//keyboard variables
boolean wkey,skey,upkey,downkey;




void setup(){
  size (800,600);
  mode = GAME;
  
  
  //intiailixzation
  leftx=0;
  lefty=height/2;
  leftd=200;
  
  rightx=width;
  righty=height/2;
  rightd=200;
  
  //initialze ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  vx=5;
  vy=5;
  
  //scoore
  rightscore=0;
  leftscore=0;
timer=100;
  
  //keybaord 
  wkey=skey=upkey=downkey=false;
}

void draw(){
  background(0);
  if (mode==INTRO){
    intro();
  }else if (mode==GAME){
    game();
  }else if(mode==PAUSE){
    pause();
  }else if (mode == GAMEOVER){
    gameover();
  }else{
    println("Error: Mode = " + mode);
  }
}
