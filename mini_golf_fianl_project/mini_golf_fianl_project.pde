int mode;
final int INTRO=0;
final int GAMEOVER=3;
final int PAUSE=2;
final int GAME = 1;

float ballx, bally, bvy, bvx;
float balld;

float holex, holey, holed;
float startx, starty, powerx, powery, timer;

int player;
color red=#ff6464;
color blue=#6464ff;
color green=#64ff64;
int strokes, redstrokes, bluestrokes, currentHole;
float sidex, sidey;


boolean aiming = false;


void setup() {
  pixelDensity(1);
  size (800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  resetGame();

  aiming = false;

  //initialization
  balld = 20;
  holed = 20;
  ballx = 100;
  bally = 700;
  holex = 700;
  holey = 100;
  bally=starty;
  ballx = startx;
  sidex =  ballx-bvx;
  sidey = bally-bvy;
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
