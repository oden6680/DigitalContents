void mousePressed() {
  if (scen == 0) {
    if (button[0].isPush()) {
      scen = 1;
    }
    if (button[1].isPush()) {
      scen = 11;
    }
    if (button[2].isPush()) {
      scen = 21;
    }
  }
  
  if (scen == 1){
    for(int i = 0; i < charaList.length; i ++){
      if(!charaStatus && button[20+2*i].isPush() && charaList[i].getGet()){
        setMyCharacter(charaList[i]);
        setEnemyCharacter(charaList[int(random(7))]);
        scen = 2;
      }
      if(button[21+2*i].isPush() && charaList[i].getGet()){
        charaStatus = true;
        StatusImg = charaList[i].img;
      }
      if(charaStatus && button[39].isPush()){
        charaStatus = false;
      }
    }
  }

  if (scen == 2) {
    if (button[3].isPush()) {
      myStatus[1] += 1;
      myStatus[2] = 0;
      enemyCommand();
      calc = true;
    }

    if (button[4].isPush()) {
      if (myStatus[1] <= 0) {
        fill(255, 255, 100);
        textSize(30);
        text("攻撃をするにはエネルギーが1以上必要です", width/2, height/2);
      } else {
        myStatus[1] -= 1;
        myStatus[2] = 1;
        enemyCommand();
        calc = true;
      }
    } 

    if (button[5].isPush()) {
      myStatus[2] = -1;
      enemyCommand();
      calc = true;
    }

    if (button[6].isPush()) {
      if (myStatus[1] <= 1) {
        fill(255, 255, 100);
        textSize(30);
        text("攻撃をするにはエネルギーが2以上必要です", width/2, height/2);
      } else {
        myStatus[1] -= 2;
        myStatus[2] = 2;
        enemyCommand();
        calc = true;
      }
    }
  }

  if (scen == 3) {
    if (button[7].isPush()) {
      reset();
      scen = 1;
    }

    if (button[8].isPush()) {
      reset();
      scen = 0;
    }
  }
  
  if(scen == 11){
    if (button[11].isPush()) {
      scen = 0;
    }
    if (button[12].isPush()) {
      scen = 12;
    }
  }
  
  if(scen == 12){
    if(mousePressed && mouseX > 300 && mouseX < 600){
      chara = int(random(7));
      scen = 13;
    }
  }
  
  if(scen == 13){
    if (button[11].isPush()) {
      scen = 0;
    }
    if (button[13].isPush()) {
      scen = 12;
    }
  }
}
