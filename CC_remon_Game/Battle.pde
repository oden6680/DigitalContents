class Battle {
  boolean action = false;
  int enemyCommand;
  void display() {
    for (int i = 3; i < 7; i ++) {
      button[i].run();
    }
    
    PImage MyCharaImg = MyCharacter;
    PImage EnemyCharaImg = EnemyCharacter;
    if(player5.isPlaying()){
      player5.pause();
    }
    if( player1.isPlaying() == false ){
     player1.play( 0 );
    }
    fill(255, 255, 100);
    textSize(30);
    text("HP:"+str(myStatus[0]), 60, 30);
    text("MP:"+str(myStatus[1]), 60, 60);
    image(MyCharaImg,125,200,300,450);
    
    text("TURN", width/2, 30);
    textSize(50);
    text(str(turn), width/2, 80);
    
    textSize(30);
    text("HP:"+str(enemyStatus[0]), width-60, 30);
    text("MP:"+str(enemyStatus[1]), width-60, 60);
    image(EnemyCharaImg,575,200,300,450);
    
    if (calc) {
      enemyCommand();
      calcHitpoint();
      interval = true;
      calc = false;
    }
    
    if(error){
      fill(0);
      stroke(255);
      strokeWeight(4);
      rect(width/2,400,750,200);
      fill(255);
      text("MPが足りません！！",width/2,400);
      button[8].run();
    }
    
    if (interval){
      button[7].run();
      fill(255);
      textSize(50);
      text(actionStr[enemyCommand],width-275,150);
      text(commandText,275,150);
    } else {
      fill(255);
      textSize(30);
      text("コマンドを入力してください",275,150);
      textSize(50);
      text("？",width-275,150);
    }
    
    
    if ((myStatus[0] <= 0) || (enemyStatus[0] <= 0)) {
      scen = 3;
    }
  }
  
  void enemyCommand() {
    if (enemyStatus[1] == 0) {
      enemyCommand = int(random(2));
    } else if (enemyStatus[1] <= 1) {
      enemyCommand = int(random(3));
    }
    if(enemyStatus[1] >= EnemyChara.needMP){
      enemyCommand = int(random(4));
    }
  
    if (enemyCommand == 0) {
      //charge
      enemyStatus[1] += 1;
      enemyStatus[2] = 0;
    } else if (enemyCommand == 1) {
      //gard
      enemyStatus[2] = -1;
    } else if (enemyCommand == 2) {
      //atack
      enemyStatus[1] -= 1;
      enemyStatus[2] = 1;
    } else {
      //special
      EnemyChara.special(2);
    }
  }
  
}
