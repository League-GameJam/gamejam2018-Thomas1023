
public class weather {
  PImage[] rain =  new PImage[4];
  int condition =0;
  boolean isClear =true;
  boolean isRaining=false;
  boolean isSnowing=false;
  boolean isWindy=false;
  weather() {
    rain[0]= loadImage("rain 0.png");
    rain[1]= loadImage("rain 1.png");
    rain[2]= loadImage("rain 2.png");
    rain[3]= loadImage("rain 3.png");
  }
  void snow() {
    isClear=false;
    isRaining=false;
    isSnowing=true;
    isWindy=false;
    c.sprite= loadImage("snowy.png");
  } 
  void rain() {
    isClear=false;
    isRaining=true;
    isSnowing=false;
    isWindy=false;
  } 
  void clear() {
    isClear=true;
    isRaining=false;
    isSnowing=false;
    isWindy=false;
    c.sprite= loadImage("clearing.png");
  } 
  void wind() {
    isClear=false;
    isRaining=false;
    isSnowing=false;
    isWindy=true;
    c.sprite= loadImage("windy.png");
  }
}
