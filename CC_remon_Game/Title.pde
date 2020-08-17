class Title {
  int x = width/2, y = 200;
  void display() {
    if( player1.isPlaying()){
      player1.pause();
    }
    if( player5.isPlaying() == false ){
     player5.play( 0 );
    }
    button[0].run();
    button[1].run();
    fill(255);
    textAlign(CENTER);
    textSize(75);
    text("大☆輝☆王", x, y);
  }
}
