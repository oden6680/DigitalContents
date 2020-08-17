class GachaResult{
  void display(){
    player7.pause();
    if( player6.isPlaying() == false ){
        player6.play(0);
    }
    textSize(40);
    fill(color(255,80,80));
    text("GET!!",width/2,50);
    image(charaList[chara].getImg(),300,150,400,600);
    charaList[chara].setGet();
    button[11].run();
    button[13].run();
  }
}
