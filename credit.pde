void creditSet() {
  credit = new Movie(this, "shulk.mp4");
  credit.play();
}
void credit() {
  if (flip) {
    frameRate(60);
    creditSet();
    flip=false;
  }
  print("credit");
  image(credit, 0, 0, 1600, 900);
  if (credit.time()==credit.duration()) {
    stage=0;
  }
}
void movieEvent(Movie m) {
  m.read();
}
