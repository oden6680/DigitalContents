void enemyCommand() {
  int command;
  if (enemyStatus[1] == 0) {
    command = int(random(2));
  } else if (enemyStatus[1] <= 1) {
    command = int(random(3));
  } else {
    command = int(random(4));
  }

  if (command == 0) {
    //charge
    enemyStatus[1] += 1;
    enemyStatus[2] = 0;
  } else if (command == 1) {
    //gard
    enemyStatus[2] = -1;
  } else if (command == 2) {
    //atack
    enemyStatus[1] -= 1;
    enemyStatus[2] = 1;
  } else {
    //special
    enemyStatus[1] -= 2;
    enemyStatus[2] = 1;
  }
}

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

void setMyCharacter(Character myChara){
  myStatus[0] = myChara.HP;
  myStatus[1] = myChara.MP;
  MyCharacter = myChara.img;
}

void setEnemyCharacter(Character enemyChara){
  enemyStatus[0] = enemyChara.HP;
  enemyStatus[1] = enemyChara.MP;
  EnemyCharacter = enemyChara.img;
}

void reset() {
  myStatus[0] = 5;
  myStatus[1] = 0;
  myStatus[2] = 0;

  enemyStatus[0] = 5;
  enemyStatus[1] = 0;
  enemyStatus[2] = 0;
}
