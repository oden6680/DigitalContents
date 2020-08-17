Button[] button;
Character[] charaList;
Title title;
Select select;
Gacha gacha;
Production production;
GachaResult gachaResult;
HowToPlay howToPlay;
Battle battle;
Result result;

int[] myStatus = new int[3]; // 0 is HP, 1 is MP, 2 is attackPoint
int[] enemyStatus = new int[3];
boolean calc = true;
boolean charaStatus = false;
PImage StatusImg;
PImage MyCharacter;
PImage EnemyCharacter;
int chara;
int scen = 0;

void setup() {
  size(1000, 1000);
  
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  textAlign(CENTER, CENTER);
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  
  PImage chara1 = loadImage("1.jpg");
  PImage chara2 = loadImage("2.jpg");
  PImage chara3 = loadImage("3.jpg");
  PImage chara4 = loadImage("4.jpg");
  PImage chara5 = loadImage("5.jpg");
  PImage chara6 = loadImage("6.jpg");
  PImage chara7 = loadImage("1.jpg");
  
  charaList = new Character[7];
  charaList[0] = new Character1(3,0,"sausage",chara1);
  charaList[1] = new Character2(3,0,"Munieru",chara2);
  charaList[2] = new Character3(3,0,"abema",chara3);
  charaList[3] = new Character4(3,0,"Bunta(underdog)",chara4);
  charaList[4] = new Character5(3,0,"Hosei Univ.",chara5);
  charaList[5] = new Character6(3,0,"Rento and Naoya",chara6);
  charaList[6] = new Character7(3,0,"God",chara7);

  title = new Title();
  select = new Select();
  gacha = new Gacha();
  production = new Production();
  gachaResult = new GachaResult();
  howToPlay = new HowToPlay();
  battle = new Battle();
  result = new Result();
  
  
  button = new Button[100];
  buttonSet();
  reset();
}


void draw() {
  background(0, 0, 100);
  if (scen == 0) {
    title.display();
  } else if (scen == 1) {
    select.display();
    if(charaStatus){
      image(StatusImg,250,125,500,750);
      button[39].run();
    }
  } else if (scen == 2) {
    battle.display();
  } else if (scen == 3) {
    result.display();
  } else if (scen == 11){
    gacha.display();
  } else if (scen == 12){
    production.display();
  } else if (scen == 13){
    gachaResult.display();
  } else if (scen == 21){
    howToPlay.display();
  }
}
