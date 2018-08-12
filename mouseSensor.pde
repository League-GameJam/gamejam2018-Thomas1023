void mousePressed() {
  int x = mouseX;
  int y = mouseY;
  //on main menu
  if (stage==2) {
    if ( y>400&&y<480) {
      if (x<1000 && x>600) {
        click();
        stage=4;
      }
    }
    if ( y>500&&y<580) {
      if (x<1000 && x>600) {
        click();
        stage=0;
        x=100;
        y=100;
      }
    }
  }
  if (stage==0) {
    if ( y>400&&y<480) {
      if (x<1000 && x>600) {
        click();
        stage=2;
      }
    }
    if ( y>500&&y<580) {
      if (x<1000 && x>600) {
        click();
        stage=1;
      }
    }
  }
  if (stage==1) {
    if ( y>200&&y<350) {
      if (x<670 && x>520) {
        vol=!vol;
        click();
      }
    }
    if ( y>200&&y<350) {
      if (x<1150 && x>1000) {
        click();
        beta=!beta;
      }
    }
    if ( y>500&&y<650) {
      if (x<910 && x>760) {
        click();
        debug=!debug;
      }
    }
    if ( y>800&&y<880) {
      if (x>640 && x<1040) {
        click();
        flip=true;
        stage=3;
      }
    }
    if ( y>0&&y<900) {
      if (x>0 && x<80) {
        click();
        stage=0;
      }
    }
  }
}
