class Production{
  void display(){
    player5.pause();
    if( player7.isPlaying() == false ){
        player7.play(0);
    }
    PImage treasure = loadImage("gacha.jpg");
    image(treasure,-250,0,1500,1000);
    textSize(100);
    fill(0);
    text("CLICK!!",width/2,200);
  }
}
