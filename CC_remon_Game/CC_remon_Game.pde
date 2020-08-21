import ddf.minim.*;

Button[] button;
Character[] charaList;
Title title;
Select select;
Gacha gacha;
Production production;
GachaResult gachaResult;
Battle battle;
Result result;
 
Minim minim;
AudioPlayer player1;
AudioPlayer player2;
AudioPlayer player3;
AudioPlayer player4;
AudioPlayer player5;
AudioPlayer player6;
AudioPlayer player7;
AudioPlayer player8;
AudioPlayer player9;

int[] myStatus = new int[3]; // 0 is HP, 1 is MP, 2 is attackPoint
int[] enemyStatus = new int[3];
String[] actionStr = new String[] {"溜める","防御","攻撃","必殺技"};
boolean calc = false;
boolean interval = false;
boolean charaStatus = false;
boolean error = false;
PImage StatusImg;
PImage MyCharacter;
PImage EnemyCharacter;
String commandText = "";
Character MyChara;
Character EnemyChara;
int turn = 1;
int chara;
int scen = 0;

void setup() {
  size(1000, 1000);
  
  rectMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  textAlign(CENTER, CENTER);
  PFont font = createFont("Meiryo", 50);
  textFont(font);
  

  minim = new Minim( this );
  player1 = minim.loadFile( "bgm_maoudamashii_8bit18.mp3" );
  player2 = minim.loadFile( "decision1.mp3" );
  player3 = minim.loadFile( "cancel4.mp3" );
  player4 = minim.loadFile( "cursor10.mp3" );
  player5 = minim.loadFile( "bgm_maoudamashii_8bit13.mp3" );
  player6 = minim.loadFile( "game_maoudamashii_9_jingle09.mp3" );
  player7 = minim.loadFile( "bgm_maoudamashii_piano30.mp3" );
  player8 = minim.loadFile( "game_maoudamashii_9_jingle02.mp3" );
  player9 = minim.loadFile( "game_maoudamashii_9_jingle10.mp3" );
  
  PImage chara1 = loadImage("sausage.png");
  PImage chara2 = loadImage("abema.jpg");
  PImage chara3 = loadImage("sakebefore.png");
  PImage chara4 = loadImage("sakeafter.jpg");
  PImage chara5 = loadImage("hoseiuniv.jpg");
  PImage chara6 = loadImage("teachers.png");
  PImage chara7 = loadImage("god.jpg");
  PImage chara8 = loadImage("pachinkasu.jpg");
  
  charaList = new Character[8];
  charaList[0] = new Character1(3,0,"sausage",chara1,2);
  charaList[1] = new Character2(3,0,"abema",chara2,1);
  charaList[2] = new Character3(3,0,"Bunta(before)",chara3,100);
  charaList[3] = new Character4(3,0,"Bunta(after)",chara4,100);
  charaList[4] = new Character5(3,0,"Hosei Univ.",chara5,100);
  charaList[5] = new Character6(3,0,"Rento and Naoya",chara6,3);
  charaList[6] = new Character7(9,0,"God",chara7,3);
  charaList[7] = new Character8(3,0,"pachinkasu",chara8,100);

  title = new Title();
  select = new Select();
  gacha = new Gacha();
  production = new Production();
  gachaResult = new GachaResult();
  battle = new Battle();
  result = new Result();
  
  
  button = new Button[100];
  buttonSet();
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
  }
}
