class Result {
  void display() {
    textSize(100);
    if ((myStatus[0] <= 0) && (enemyStatus[0] <= 0)) {
      fill(154, 205, 50);
      text("Draw", width/2, 100);
    } else if (myStatus[0] <= 0) {
      fill(255, 0, 0);
      text("Lose", width/2, 100);
    } else {
      fill(255, 0, 0);
      text("Win", width/2, 100);
    }

    button[7].run();
    button[8].run();
  }
}
