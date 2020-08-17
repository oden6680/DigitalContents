void buttonSet(){
  //スタート画面
  button[0] = new Button(width/2, height/2, 300, 80, color(190, 100, 70), "Game Start");
  button[1] = new Button(width/2, height/2 +100, 300, 80, color(190, 100, 70), "ガチャ");
  //button[2] = new Button(width/2, height/2 +200, 300, 80, color(190, 100, 70), "遊び方");
  
  //対戦画面
  button[3] = new Button(275, 6*height/8, 400, 100, color(190, 100, 70), "溜める");
  button[4] = new Button(275, 7*height/8, 400, 100, color(190, 100, 70), "攻撃");
  button[5] = new Button(width/2 + 225, 6*height/8, 400, 100, color(190, 100, 70), "防御");
  button[6] = new Button(width/2 + 225, 7*height/8, 400, 100, color(190, 100, 70), "必殺技");
  button[7] = new Button(width/2, 150, 200, 50, color(190, 100, 70), "次のターンへ");
  button[8] = new Button(850, 325, 50, 50, color(190, 100, 70), "×");
  
  //リザルト画面
  button[9] = new Button(width/2, height/2, 300, 80, color(190, 100, 70), "もう一度遊ぶ");
  button[10] = new Button(width/2, height/2 + 100, 300, 80, color(190, 100, 70), "タイトルへ");
  
  //ガチャ画面
  button[11] = new Button(275, 7*height/8, 400, 100, color(190, 100, 70), "タイトルへ");
  button[12] = new Button(width/2 + 275, 7*height/8, 400, 100, color(190, 100, 70), "ガチャを引く");
  button[13] = new Button(width/2 + 275, 7*height/8, 400, 100, color(190, 100, 70), "もう一度引く");
  
  //セレクト画面
  int row = -1;
  int line = 0;
  for(int i = 20; i < 21+charaList.length*2; i++){
    if(i%2 == 0){
      if(125+250*(row+1) < width){
        row += 1;
      } else {
        row = 0;
        line += 1;
      }
      button[i] = new Button(125+250*row,250*(line+1)+200*line,200,300, color(190, 100, 70), "");
    } else {
      button[i] = new Button(125+250*row,450*(line+1),200, 50, color(190, 100, 70), "能力を見る");
    }
  }
  button[39] = new Button(725, 150, 50, 50, color(190, 100, 70), "×");
}
