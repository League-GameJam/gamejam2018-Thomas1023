public class Charcter {
  float y;
  float x;
  float w;
  float h;
  float hp;
  float speed;
  double velX;
  double velY;
  PImage sprite  = loadImage("up.png");
  float grav;
  boolean isGrounded;
  boolean isAlive;
  boolean isJumped;
  float jumpH;
  Charcter() {

    //y=482;
    //x=832;
    x=200;
    y=0;
    w=64;
    h=64;
    jumpH=-30;
    isJumped=false;
    hp=200;
    speed=5;
    velX=0;
    velY=0;

    sprite  = loadImage("up.png");
    grav=1;
    isGrounded=false;
    isAlive=true;
  }
  void ground(float top) {
    print("toped");
    y=plat.y-h; 
    isJumped=false;
    isGrounded=true;
    
    velY=0;
  }
  void move() {

    x+=velX+speedMod;
    y+=velY+speedMod;
    if (!isGrounded) {
      print("grav");
      velY+=grav;
    }
  }

  void setVelY(double velY) {
    this.velY=velY;
  }
  void setVelX(double velX) {
    this.velX=velX;
  }
  void attack() {
    println("attacked");
  }
}
