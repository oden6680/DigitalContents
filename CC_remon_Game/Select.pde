class Select{
  PImage lock = loadImage("lock.png");
  void display(){
    if( player5.isPlaying() == false ){
     player5.play( 0 );
    }
    charaList[0].setGet();
    int row = -1;
    int line = 0;
    
    fill(255);
    textAlign(CENTER);
    textSize(70);
    text("キャラクターを選んでください", width/2, 75);
    
    for (int i = 0; i < charaList.length; i++){
      if (25+250*(row+1) < width){
        row += 1;
      } else {
        row = 0;
        line += 1;
      }
      if(!charaList[i].getGet()){
        tint(0);
        image(charaList[i].getImg(),25+250*row,100*(line+1)+350*line,200,300);
        noTint();
        image(lock,25+250*row,150*(line+1)+300*line,200,200);
      } else {
        button[i*2+20].run();
        image(charaList[i].getImg(),25+250*row,100*(line+1)+350*line,200,300);
        button[i*2+21].run();
      }
    }
  }
}
