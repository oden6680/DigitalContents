class Gacha{
  Character getChara;
  PImage charaScreen1 = loadImage("1.jpg");
  PImage charaScreen2 = loadImage("2.jpg");
  PImage charaScreen3 = loadImage("3.jpg");
  PImage charaScreen4 = loadImage("4.jpg");
  PImage charaScreen5 = loadImage("5.jpg");
  PImage charaScreen6 = loadImage("6.jpg");
  PImage charaScreen7 = loadImage("1.jpg");
  
  void GachaScreen(){
    fill(255);
    textAlign(CENTER);
    textSize(25);
    text("THE Game7's Character",width/2-100,0,300,100);
    image(charaScreen1,25,100,200,300);
    image(charaScreen2,275,100,200,300);
    image(charaScreen3,525,100,200,300);
    image(charaScreen4,775,100,200,300);
    image(charaScreen5,125,450,200,300);
    image(charaScreen6,375,450,200,300);
    image(charaScreen7,625,450,200,300);
    text("Please click and start Gacha",width/2 -100,750,300,100);
  }
  
  void decidedScreen(){
    int n = (int)(random(1,8));
    if(n == 1){
      getChara = new Character1(3,0,charaScreen1);  
    }else if(n == 2){
      getChara = new Character2(3,0,charaScreen2);
    }else if(n == 3){
      getChara = new Character3(3,0,charaScreen3);  
    }else if(n == 4){
      getChara = new Character4(3,0,charaScreen4);
    }else if(n == 5){
      getChara = new Character5(3,0,charaScreen5);
    }else if(n == 6){
      getChara = new Character6(3,0,charaScreen6);
    }else if(n == 7){
      getChara = new Character7(3,0,charaScreen7);
    }
    imageMode(CENTER);
    image(getChara.getImg(),width/2,height/3,400,600);
    textAlign(CENTER);
    fill(255);
    text(getChara.getEffect(),width/2-200,700,400,200);
  }
}

void setup(){
   size(1000,1000);
   background(200);
   Gacha test = new Gacha();
   test.GachaScreen();
   test.decidedScreen();
}

void draw(){
}

abstract class Character{
  int HP;
  int MP;
  PImage img;
  
  Character(int HP0,int MP0,PImage img0){
    HP = HP0;
    MP = MP0;
    img = img0;
  }
  
  int command(int n){
    if(n == 1){
      MP++;
      return 0;
    }else if(n == 2){
      return -1;
    }else if(n == 3){
      return 1;
    }else if(n == 4){
      return Deathblow();
    }
    return 0;
  }
  
  PImage getImg(){
    return img;
  }
  
  abstract String getEffect();
  abstract String get_name();
  abstract int Deathblow(); 
  
}

class Character1 extends Character{
  Character1(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  String getEffect(){
    return "Deathblow is nothing";
  }
  
  String get_name(){
    return "Bunta(underdog)";
  }
    
  int Deathblow(){
    return 0;
  }
}

class Character2 extends Character{
  Character2(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  String getEffect(){
    return "breaking barrier";
  }
  
  String get_name(){
    return "abema";
  }
    
  int Deathblow(){
    return 2;
  }
}

class Character3 extends Character{
  Character3(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  
  String getEffect(){
    return "breaking barrier";
  }
  
  String get_name(){
    return "sausage";
  }
    
  int Deathblow(){
    return 1;
  }
}
class Character4 extends Character{
  Character4(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  String getEffect(){
    return "2damage";
  }
  
  String get_name(){
    return "TIBa";
  }
    
  int Deathblow(){
    return 2;
  }
}

class Character5 extends Character{
  Character5(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  
  String getEffect(){
    return "2damage";
  }
  
  String get_name(){
    return "Rento and Naoya";
  }
    
  int Deathblow(){
    return 2;
  }
}

class Character6 extends Character{
  Character6(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  String getEffect(){
    return "breaking barrier and 2damage";
  }
  
  String get_name(){
    return "  Hosei Univ.";
  }
    
  int Deathblow(){
    return 3;
  }
}

class Character7 extends Character{
  Character7(int HP0,int MP0,PImage img0){
      super(HP0,MP0,img0);
  }
  String getEffect(){
    return "breaking barrier and 3damage";
  }
  
  String get_name(){
    return "God";
  }
    
  int Deathblow(){
    return 4;
  }
}
