void name() {
  noFill();
  stroke(1);
  rect(600, 500, 400, 80, 20);
  rect(600, 400, 400, 80, 20);
  textSize(60);
  text("Enter your name", 575, 300);
  text("Continue", 680, 400+60);
  text("Back", 730, 500+60);
  textSize(175);
  text(name, 75, 200);
}
