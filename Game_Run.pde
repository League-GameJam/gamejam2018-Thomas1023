void bg() {
  tempX = phil.x;
  tempY = phil.y;

  image(c.sprite, 0, 0);
}
void game() {
  bgX=(int)phil.velX+bgX;
  bgY=(int)phil.velY+bgY;

  bg();
  image(phil.sprite, phil.x, phil.y, phil.w, phil.h);
  textSize(50);
  fill(0, 0, 0);

  image(rainIcon, 50, 50, 75, 75);
  text("Q", 65, 175);
  image(snowIcon, 150, 50, 75, 75);
  text("W", 160, 175);
  image(windIcon, 250, 50, 75, 75);
  text("E", 270, 175);
  image(clearIcon, 350, 50, 75, 75);
  text("R", 375, 175);
  fill(100, 255, 100);

  textSize(25);
  rect(width-50, 75, -phil.hp*3, 30);
  fill(0, 0, 0);
  text("HP", width-40, 100);
  if (w.isWindy) {
    speedMod=4;
  } else {
    speedMod=0;
  }
  if (w.isSnowing) {
    for (int i = 0; i < p.length; i++) {
      p[i].fall();
      p[i].display();
    }
  }
  if (w.isRaining) {
    if (beta) {
      image(w.rain[rainStep], 0, 0, 1600, 750);
      if (rainStep==3) {
        rainStep=0;
      }
      rainStep++;
    } else {
      for (int i = 0; i < p.length; i++) {
        p[i].fall();
        p[i].display();
      }
    }
  }
  if (w.isClear) {
    w.isClear=false;
  }
  if (phil.x>=1600) {
    phil.x=0;
  }
  if (phil.x<=0) {
    phil.x=1600;
  }
}
//public boolean hitBox(Charcter obj, Platform grnd) {
//  float xSpot = grnd.x+grnd.w;
//  float ySpot = grnd.y+grnd.h;


//  if (obj.y>=height-200) {
//    return true;
//  }
//  return false;

//  //if (obj.x>=grnd.x&&obj.x<=xSpot) {
//  //  print("x");
//  //  if (obj.y>=grnd.y&&obj.y<=ySpot) {
//  //    println("overlapping");
//  //    return true;
//  //  }
//  //}
//  //return false;
//}
