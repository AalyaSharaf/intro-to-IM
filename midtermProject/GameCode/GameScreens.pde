void homeScreen() {
  background (0);
  image(spaceBackground, 0, 0);
  homeDesign();
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("Click to Start", width/2, height/2-90);
  rectMode (CENTER);
  stroke(255);
  fill(125);
  rect(width/2, height/2+30, 400, 100);
  textSize(20);
  fill(255, 255, 0);
  text ("Controls:'a' & 'd' or left & right keys", width/2, 320);
  text("Objective: Avoid falling metoerites!", width/2, 360);
}

void gameScreen() {
  background (0);
  image(spaceBackground, 0, 0);
  drawSpaceShip();
  moveSpaceShip();
  gameLives();
  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i].display();
    meteorites[i].checkCollisions();
    meteorites[i].descend();
    
  }
}

void gameOverScreen() {
  noLoop();
  background (0);
  image(spaceBackground, 0, 0);
  fill(255, 0,0);
  textAlign(CENTER);
  textSize(70);
  text ("GAME OVER!", width/2, 250);
  stroke(255);
  fill(125);
  textSize(40);
  fill(255, 255, 0);
  text ("Click to Play Again", width/2, 350);
}
