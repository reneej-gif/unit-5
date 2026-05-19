import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//mode framework
int mode;
final int INTRO=0;
final int GAMEOVER=3;
final int PAUSE=2;
final int GAME = 1;
final int OPTIONS = 4;

//target variables
float x, y, d, sliderY,r;
float vx, vy; //velocity
int score, highscore, lives;

PImage kirby;
PImage mushroom;
PImage star;
PImage p;

//sound variables
Minim minim;
AudioPlayer theme, success, failure, gameover;



//color palette

void setup() {
  size (800, 800);
  mode = OPTIONS;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //customization
  kirby = loadImage("kirby.png");
  star = loadImage("star.jpg");
  mushroom = loadImage("mushroom.png");

  //target initialization
  x= width/2;
  y=height/2;
  d=200;
  vx=random(-5, 5);
  vy=random(-5, 5);
  sliderY=500;
  score = 0;
  highscore = 0;
  lives = 3;

  //minim
  minim = new Minim(this);
  theme = minim.loadFile("MUSIC.mp3");
  success = minim.loadFile("SUCCESS.wav");
  failure = minim.loadFile("FAILURE.wav");
  
  reset();
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
  }else if(mode == OPTIONS){
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}
