class Platform {
  float w;
  float h;
  float x;
  float y;
  float side=0;

  Platform(float x1, float y1, float w1, float h1) {
    w=w1;        
    h=h1;
    y=y1;
    x=x1;
  }
  void make() {
    fill(100, 255, 100);
    rect(x, y, w, h);
  }
}
boolean hitBox(Charcter c, Platform p) {
  print("called");

  if (c.x+c.w>=p.x&&c.x<=p.x+p.w) {
    print("x");
    if (c.y>=p.y&&c.y<=p.y+p.h) {
      print("x and y");
      return true;
    }
  }
  return false;
}
