import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

int mode;
final int INTRO=0;
final int GAMEOVER=3;
final int PAUSE=2;
final int GAME = 1;


//varialbes
float paddlex, paddley, paddled;//paddle
float ballx, bally, balld, vx, vy, timer;
float speed, a;
int lives, score;

//sound variables
Minim minim;
AudioPlayer theme, success, failure, gameover, clickSound;

//keyboard
boolean akey, dkey, leftkey, rightkey;

//gif
PImage[] gif;
int numberOfFrames;
int f;

//brick
int[] x;
int[] y;
int brickd;
int n;
int tempx, tempy;
boolean[] alive;
color red=#ff6464;
color green=#64ff64;
color blue=#6464ff;
color yellow=#ffff64;
color neon=#F4FF7C;

void setup() {
  size (800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");

  //keybaord
  akey=dkey=rightkey=leftkey=false;

  //initialization
  paddlex=width/2;
  paddled=100;
  paddley=height;

  a=120;
  speed=5;
 
  PFont myFont = createFont("Comic Sans MS", 50);
  textFont(myFont);


  //gif
  numberOfFrames = 61;
  gif = new PImage[numberOfFrames];

  int f=0;
  while (f<numberOfFrames) {
    String filename = "frame_"+f+"_delay-0.05s.gif";
    gif[f]=loadImage(filename);
    f++;


    //initialze ball
    resetGame();


    //set up arraw
    brickd=50;
    n = 32;
    x=new int[n];
    y= new int[n];
    alive=new boolean[n];
    tempx=50;
    tempy=100;

    int i=0;
    while (i<n) {
      x[i]=tempx;
      y[i]=tempy;
      alive[i]=true;
      tempx=tempx+100;
      if (tempx>=width) {
        tempx=50;
        tempy=tempy+100;
      }
      i=i+1;
    }
  }
}

void draw() {

  if (mode==INTRO) {
    theme.play();
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    theme.play();
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
