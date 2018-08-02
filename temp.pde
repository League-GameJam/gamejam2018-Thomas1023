Phil sprite;
void setup(){
   sprite = new Phil();
  size(1000, 1000);
  sprite.sprite = loadImage("sprite.png");
}
void draw(){
  background(200);
  image(sprite.sprite, sprite.x, sprite.y,1000,1000);
}