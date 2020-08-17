
void calcHitpoint() {
  if (myStatus[2] == 0) {
    if (enemyStatus[2] > 0) {
      myStatus[0] -= enemyStatus[2];
    }
  } else if (myStatus[2] < 0) {
    if ((enemyStatus[2] > 0) && (enemyStatus[2]+myStatus[2] > 0)) {
      myStatus[0] -= enemyStatus[2]+myStatus[2];
    }
  } else {
    if (myStatus[2] < enemyStatus[2]) {
      myStatus[0] -= (enemyStatus[2] - myStatus[2]);
    } else if (myStatus[2] > enemyStatus[2]) {
      if (enemyStatus[2] > 0) {
        enemyStatus[0] -= (myStatus[2] - enemyStatus[2]);
      } else if (enemyStatus[2] == 0) {
        enemyStatus[0] -= myStatus[2];
      } else {
        enemyStatus[0] -= (myStatus[2] + enemyStatus[2]);
      }
    }
  }
}

void setMyCharacter() {
  myStatus[0] = MyChara.HP;
  myStatus[1] = MyChara.MP;
  MyCharacter = MyChara.img;
}

void setEnemyCharacter() {
  enemyStatus[0] = EnemyChara.HP;
  enemyStatus[1] = EnemyChara.MP;
  EnemyCharacter = EnemyChara.img;
}

void reset() {
  turn = 1;
  calc = false;
  interval = false;
  charaStatus = false;
  error = false;
}

void buttonMusic(){
  player2.play( 0 );
}

void statusMusic(){
  player4.play( 0 );
}

void cancelMusic(){
  player3.play( 0 );
}
