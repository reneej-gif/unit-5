int mode;
final int INTRO=0;
final int GAMEOVER=3;
final int PAUSE=2;
final int GAME = 1;


//varialbes
float paddlex, paddley, paddled;//paddle
float ballx, bally, balld, vx, vy, timer, life;

//keyboard
boolean akey, dkey, leftkey, rightkey;

//brick
int[] x;
int[] y;
int brickd;
int n;
int tempx, tempy;
boolean[] alive;


void setup() {
  size (800, 800);
  mode = GAME;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //keybaord
  akey=dkey=rightkey=leftkey=false;

  //initialization
  paddlex=width/2;
  paddled=100;
  paddley=height;
  timer=100;


  //initialze ball
  ballx=width/2;
  bally=height/2+200;
  balld=10;
  vx=0;
  vy=1;

  //set up arraw
  brickd=50;
  n = 4;
  x=new int[n];
  y= new int[n];
  

  x[0]=100;
  y[0]=100;

  x[1]=400;
  y[1] =100;

  x[2] = 700;
  y[2]=100;

  x[3] = 100;
  y[3]=200;
}

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
