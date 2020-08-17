class Battle {
  void display() {
    for (int i = 3; i < 7; i ++) {
      button[i].run();
    }
    
    PImage MyCharaImg = MyCharacter;
    PImage EnemyCharaImg = EnemyCharacter;
    fill(255, 255, 100);
    textSize(30);
    text("HP:"+str(myStatus[0]), 60, 30);
    text("MP:"+str(myStatus[1]), 60, 60);
    image(MyCharaImg,125,200,300,450);
    text("HP:"+str(enemyStatus[0]), width-60, 30);
    text("MP:"+str(enemyStatus[1]), width-60, 60);
    image(EnemyCharaImg,575,200,300,450);
    if (calc) {
      calcHitpoint();
      calc = false;
    }

    if ((myStatus[0] <= 0) || (enemyStatus[0] <= 0)) {
      scen = 3;
    }
  }
}
