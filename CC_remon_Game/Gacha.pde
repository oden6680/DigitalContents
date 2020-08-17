class Gacha{
  PImage lock   = loadImage("lock.png");
  void display(){
    charaList[0].setGet();
    button[11].run();
    button[12].run();
    int row = -1;
    int line = 0;
    for (int i = 0; i < charaList.length; i++){
      if (25+250*(row+1) < width){
        row += 1;
      } else {
        row = 0;
        line += 1;
      }
      if(!charaList[i].getGet()){
        tint(0);
        image(charaList[i].getImg(),25+250*row,50*(line+1)+350*line,200,300);
        noTint();
        image(lock,25+250*row,100*(line+1)+300*line,200,200);
      } else {
        image(charaList[i].getImg(),25+250*row,50*(line+1)+350*line,200,300);
      }
    }
  }
}
