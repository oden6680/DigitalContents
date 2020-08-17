class Result {
  void display() {
    player1.pause();
    button[9].run();
    button[10].run();
    textSize(100);
    if ((myStatus[0] <= 0) && (enemyStatus[0] <= 0)) {
      fill(154, 205, 50);
      text("Draw", width/2, 100);
    } else if (myStatus[0] <= 0) {
      if( player9.isPlaying() == false ){
        player9.play(0);
      }
      fill(255, 0, 0);
      text("Lose", width/2, 100);
    } else {
      if( player8.isPlaying() == false ){
        player8.play(0);
      }
      fill(255, 0, 0);
      text("Win", width/2, 100);
    }
    text("経過ターン："+turn,width/2,250);
  }
}
