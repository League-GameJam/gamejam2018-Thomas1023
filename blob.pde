public class blob{
  int y=0;
  int x=0;
  int hp;
  int speed=5;
  double velX=0;
  double velY=0;
  PImage sprite  = loadImage("blob.png");

  boolean isGrounded;
  boolean isAlive=true;
  
    void move(){
    x+=velX;
    y+=velY;
  }
  
  void setVelY(double velY) {
    this.velY=velY;
  }
  void setVelX(double velX) {
    this.velX=velX;
  }
}
