import processing.video.*; 
import processing.sound.*;
SoundFile click;
SoundFile fastFall;

PImage vol_ls;
PImage beta_ls;
PImage sans_ls;
PImage debug_ls;
boolean vol =true;
boolean beta=false;
boolean flip=true;
boolean debug=true;

PFont sans;
PImage title;
PImage rainIcon;
PImage windIcon;
PImage snowIcon;
PImage clearIcon;

String name="";
String tempName="";
float tempY;
float tempX;

int textStep=0;
int bgX=0;
int bgY=0;
int speedMod=2;
int rainStep=0;
weather w;
Movie credit;

Charcter phil;
stage c;
Platform plat;
Particle[] p = new Particle[620];

static int stage=0;
//stage 1=settings
//stage 2=name select
//stage 0=menu
//stage 3=credits
//stage 4=game
void setup() {
  rainIcon= loadImage("rainIcon.png");
  snowIcon= loadImage("snowIcon.png");
  clearIcon= loadImage("clearIcon.png");
  windIcon= loadImage("windIcon.png");

  for (int i = 0; i < p.length; i++) {
    p[i] = new Particle();
  }

  c=new stage();
  phil=new Charcter();
  plat=new Platform(0, 750, 1600, 200);
  w= new weather();
  soundSet();
  sans = createFont("Comic Sans MS", 60);
  size(1600, 900);
}
void draw() {
  
  println(frameRate);

  if (stage==0) {
    background(255);

    maker(60);
  }
  if (stage==1) {
    background(255);

    setting();
  }
  if (stage==2) {
    background(255);

    name();
  }
  if (stage==3) {
    credit();
  }
  if (stage==4) {
    if (debug) {
    print("printing");
    plat.make();
  }
    phil.move();
    game();
    if (hitBox(phil, plat)) {
      phil.ground(height);
    }
  }
}
