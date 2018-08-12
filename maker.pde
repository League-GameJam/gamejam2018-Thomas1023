public void maker(int i) {
  noFill();
  noStroke();
  rect(600, 500, 400, 80, 20);
  rect(600, 400, 400, 80, 20);
  textFont(sans);

  textSize(255);
  fill(0, 0, 2);
  text("S.P.U.D", 361, 226); 
  textSize(i);
  fill(0, 0, 0);
  if ( mouseY>400&&mouseY<480) {
    if (mouseX<1000 && mouseX>600) {
      fill(100, 100, 100);
    }
  }
  text("Play", 740, 400+60);
  fill(0, 0, 0);
  if ( mouseY>500&&mouseY<580) {
    if (mouseX<1000 && mouseX>600) {
      fill(100, 100, 100);
    }
  }
  text("Settings", 680, 500+60);
  fill(0, 0, 0);
}
