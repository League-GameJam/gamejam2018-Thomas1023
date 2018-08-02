public void sprite() {
}
void keyPressed() {
  if (keyCode == UP) {
    print("up");
    sprite.moveUP();
  }
  if (keyCode == DOWN) {
    print("down");
    sprite.moveDown();
  }
  if (keyCode == LEFT) {
    print("left");
    sprite.moveLeft();

  }
  if (keyCode == RIGHT) {
    print("up");
    sprite.moveRight();

  }
}