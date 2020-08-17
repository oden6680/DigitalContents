class Production{
  void display(){
    PImage treasure = loadImage("gacha.jpg");
    image(treasure,-250,0,1500,1000);
    textSize(100);
    fill(0);
    text("CRICK!!",width/2,200);
  }
}
