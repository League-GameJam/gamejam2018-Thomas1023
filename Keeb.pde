void keyTyped() {
  if (stage==2) {
    textStep++;
    if (key== BACKSPACE) {
      print("bs");
      if (name.length()<=0) {
      } else if (keyCode==ENTER) {
        stage=4;
      } else {
        textStep=textStep-2;
        name = name.substring( 0, name.length()-1 );
      }
    } else {
      name=name+key;
    }
  }
  if (key=='q') {
    w.rain();
  }
  if (key=='w') {
    w.snow();
  }
  if (key=='e') {
    w.wind();
  }
  if (key=='r') {
    w.clear();
  }
}
void keyPressed() {
  if (stage==4) {
    if (key==' ') {
      phil.attack();
    }
    if (keyCode==UP) {
      phil.isGrounded=false;
      if (phil.y>0&&!phil.isJumped) {
        phil.sprite = loadImage("up.png");
        phil.setVelY(phil.jumpH);
        phil.isJumped=true;
      }
    }
    if (keyCode==LEFT) {
      phil.sprite = loadImage("left.png");
      phil.setVelX(-phil.speed);
    }
    if (keyCode==DOWN) {
      if (phil.y<700) {
        phil.setVelY(-phil.jumpH);
        fastFall();
      }
    }
    if (keyCode==RIGHT) {
      phil.sprite = loadImage("right.png");
      phil.setVelX(phil.speed);
    }
  }
}
void keyReleased() {
  if (stage==4) {
    if (keyCode==UP) {
      if (phil.y>0&&!phil.isJumped) {

        phil.sprite = loadImage("idle.png");
        phil.setVelY(0);
      }
    }
    if (keyCode==DOWN) {
      phil.sprite = loadImage("idle.png");
      phil.setVelY(0);
    }
    if (keyCode==LEFT) {
      phil.sprite = loadImage("idle.png");
      phil.setVelX(0);
    }
    if (keyCode==RIGHT) {
      phil.sprite = loadImage("idle.png");
      phil.setVelX(0);
    }
  }
}
