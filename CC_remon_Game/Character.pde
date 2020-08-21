abstract class Character{
  int HP;
  int MP;
  String Name;
  PImage img;
  int needMP;
  private boolean get = false;
  
  Character(int HP0, int MP0, String Name0, PImage img0, int needMP0){
    HP = HP0;
    MP = MP0;
    Name = Name0;
    img = img0;
    needMP = needMP0;
  }
  
  boolean getGet(){
    return get;
  }
  
  void setGet(){
    get = true;
  }
  
  PImage getImg(){
    return img;
  }
  
  abstract void special(int n);
  abstract void setUp(int n);
}

class Character1 extends Character{
  Character1(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  
  void setUp(int n){
    if (n == 1){
      enemyStatus[0] -= 1;
    } else {
      myStatus[0] -= 1;
    }
  }
  
  void special(int n){
    if (n == 1){
      myStatus[1] -= 2;
      if (enemyStatus[2] < 0){
        myStatus[2] = 1;
        enemyStatus[2] = 0;
      } else {
        myStatus[2] = 1;
      }
    } else {
      enemyStatus[1] -= 2;
      if (myStatus[2] < 0){
        enemyStatus[2] = 1;
        myStatus[2] = 0;
      }
    }
  }
}

class Character2 extends Character{
  Character2(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  
  void setUp(int n){
  }
  
  void special(int n){
    if (n == 1){
      myStatus[1] -= 1;
      myStatus[0] += 1;
      myStatus[2] = 0;
    } else {
      enemyStatus[1] -= 1;
      enemyStatus[0] += 1;
      enemyStatus[2] = 0;
    }
  }
}

class Character3 extends Character{
  Character3(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  void setUp(int n){
    enemyStatus[0] -= 1;
    myStatus[0] -= 1;
  }
  
  void special(int n){
  }
}

class Character4 extends Character{
  Character4(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  void setUp(int n){
  }
  
  void special(int n){
  }
}

class Character5 extends Character{
  Character5(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  void setUp(int n){
  }
  
  void special(int n){
  }
}

class Character6 extends Character{
  Character6(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  
  void setUp(int n){
    if (n == 1){
      enemyStatus[0] -= 1;
    } else {
      myStatus[0] -= 1;
    }
  }
  
  void special(int n){
    if (n == 1){
      myStatus[1] -= 3;
      if (enemyStatus[2] < 0){
        myStatus[2] = 1;
        enemyStatus[2] = 0;
      } else {
        myStatus[2] = 1;
      }
    } else {
      enemyStatus[1] -= 3;
      if (myStatus[2] < 0){
        enemyStatus[2] = 1;
        myStatus[2] = 0;
      }
    }
  }
}

class Character7 extends Character{
  Character7(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  void setUp(int n){
  }
  
  void special(int n){
    if (n == 1){
      myStatus[1] -= 3;
      myStatus[2] = 5;
    } else {
      enemyStatus[1] -= 3;
      enemyStatus[2] = 5;
    }
  }
}

class Character8 extends Character{
  Character8(int HP0,int MP0,String Name0,PImage img0, int needMP0){
      super(HP0,MP0,Name0,img0,needMP0);
  }
  
  void setUp(int n){
  }
  
  void special(int n){
  }
}
