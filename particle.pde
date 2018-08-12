
class Particle {
  float x;
  float y;
  float depth;
  float lgth;
  float velY;

  Particle() {
    x  = random(1600);
    y  = random(-400, 0);
    depth  = random(0, 20);
    lgth = map(depth, 0, 20, 10, 20);
    velY  = map(depth, 0, 10, 1, 10);
  }

  void fall() {

    y +=velY;
    float grav = map(depth, 0, 20, 0, 0.2);
    if (y > 750) {
      y = random(-100,20);
      velY = map(depth, 0, 10, 4, 10);
    }

  }

  void display() {
    if (w.isRaining) {
      strokeWeight(map(depth, 0, 20, 1, 3));
      stroke(50, 150, 200);
      line(x, y, x, y+lgth);
    }
    if (w.isSnowing) {
      velY=velY/2;
      strokeWeight(map(depth, 0, 20, 1, 2));
      stroke(69, 250, 255);
      line(x, y, x, y+lgth);
      line(x-lgth/2, y+lgth/2, x+lgth/2, y+lgth/2);
      velY=velY*2;
    }
  }
}
