class GachaResult{
  void display(){
    image(charaList[chara].getImg(),300,150,400,600);
    charaList[chara].setGet();
    button[11].run();
    button[13].run();
  }
}
