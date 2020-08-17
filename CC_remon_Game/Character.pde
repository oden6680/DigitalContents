abstract class Character{
  int HP;
  int MP;
  String Name;
  PImage img;
  private boolean get = false;
  
  Character(int HP0, int MP0, String Name0, PImage img0){
    HP = HP0;
    MP = MP0;
    Name = Name0;
    img = img0;
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
}

class Character1 extends Character{
  Character1(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character2 extends Character{
  Character2(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character3 extends Character{
  Character3(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character4 extends Character{
  Character4(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character5 extends Character{
  Character5(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character6 extends Character{
  Character6(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}

class Character7 extends Character{
  Character7(int HP0,int MP0,String Name0,PImage img0){
      super(HP0,MP0,Name0,img0);
  }
}
