
void setting() {
  stroke(1);
  fill(0, 0, 0);
  text("Sound", 500, 200); 

  text("Beta", 1010, 200); 

  textSize(40);

  text("Comic Sans", 726, 200); 
  text("Debug", 780, 500); 

  textSize(20);

  text("off", 1063, 350);
  text("off", 583, 350); 
  text("off", 823, 650); 

  text("off", 823, 350);

  textSize(60);
  noFill();

  rect(640, 800, 400, 80, 20);
  rect(0, 0, 75, 900, 20);

  text("Credits", 725, 500+360); 
  text("B\na\nc\nk", 15, 350);
  sans_ls  = loadImage("on.PNG");
  if (beta) {
    beta_ls  = loadImage("on.PNG");
  } else {
    beta_ls = loadImage("off.PNG");
  }
  if (debug) {
    debug_ls  = loadImage("on.PNG");
  } else {
    debug_ls = loadImage("off.PNG");
  }
  if (vol) {
    vol_ls = loadImage("on.PNG");
  } else {
    vol_ls = loadImage("off.PNG");
  }
  image(debug_ls, 760, 500, 150, 150);
  image(vol_ls, 520, 200, 150, 150);
  image(sans_ls, 760, 200, 150, 150);
  image(beta_ls, 1000, 200, 150, 150);
}
