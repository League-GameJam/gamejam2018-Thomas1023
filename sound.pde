void soundSet() {
  click = new SoundFile(this, "click.wav");
  fastFall = new SoundFile(this, "fastFall.wav");

}
void click() {
  if (vol) {
    click.play();
  }
}
void fastFall(){
  if (vol) {
    fastFall.play();
  }
}
