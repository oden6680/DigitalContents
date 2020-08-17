void mousePressed() {
  if (scen == 0) {
    if (button[0].isPush()) {
      scen = 1;
      buttonMusic();
    }
    if (button[1].isPush()) {
      scen = 11;
      buttonMusic();
    }
  }
  
  if (scen == 1){
    for(int i = 0; i < charaList.length; i ++){
      if(!charaStatus && button[20+2*i].isPush() && charaList[i].getGet()){
        buttonMusic();
        MyChara = charaList[i];
        EnemyChara = charaList[int(random(8))];
        setMyCharacter();
        setEnemyCharacter();
        MyChara.setUp(1);
        EnemyChara.setUp(2);
        scen = 2;
      }
      if(button[21+2*i].isPush() && charaList[i].getGet()){
        statusMusic();
        charaStatus = true;
        StatusImg = charaList[i].img;
      }
      if(charaStatus && button[39].isPush()){
        cancelMusic();
        charaStatus = false;
      }
    }
  }

  if (scen == 2) {
    if (button[3].isPush() && !interval) {
      buttonMusic();
      myStatus[1] += 1;
      myStatus[2] = 0;
      commandText = "溜める";
      battle.action = true;
      calc = true;
    }

    if (button[4].isPush() && !interval) {
      buttonMusic();
      if (myStatus[1] <= 0) {
        error = true;
      } else {
        myStatus[1] -= 1;
        myStatus[2] = 1;
        commandText = "攻撃";
        battle.action = true;
        calc = true;
      }
    } 

    if (button[5].isPush() && !interval) {
      buttonMusic();
      myStatus[2] = -1;
      commandText = "防御";
      battle.action = true;
      calc = true;
    }

    if (button[6].isPush() && !interval) {
      buttonMusic();
      if (myStatus[1] < MyChara.needMP) {
        error = true;
      } else {
        commandText = "必殺技";
        MyChara.special(1);
        battle.action = true;
        calc = true;
      }
    }
    
    if(button[7].isPush() && interval){
      buttonMusic();
      turn += 1;
      interval = false;
    }
    
    if(button[8].isPush() && !interval && error){
      cancelMusic();
      error = false;
    }
    
  }

  if (scen == 3) {
    if (button[9].isPush()) {
      reset();
      scen = 1;
    }

    if (button[10].isPush()) {
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
      chara = int(random(charaList.length));
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
