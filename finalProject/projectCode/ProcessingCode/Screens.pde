void homeScreen() {
  //details on the homescreen
  background(0);
  fill(255);
  text ("Click On the Screen to Start", 50, 50);
  image (gameBackground, 0, 0);
}

void gameScreen() {
  //details on the game screen
  background (3, 20, 37);
  gameDetails();
  gameScore();
  levels();
}

void gameOverScreen() {
  //details on the game over screen
  background(3, 20, 37);
  fill(255);
  
  //if you end the game with a score below 50, you lose 
  if (Score < 50) {
    image (gameOverBackground, 0, 0);
  }
  //if you reach 50 points, you win
  if (Score >=50) {
    image (winningScreenBackground, 0, 0);
  }
}


void gameDetails() {
  background(3, 20, 37);

  //border of game
  stroke(255);
  strokeWeight(20);
  line (0, 0, 0, height);
  line (width, width, width, 0);
  line (0, height, width, height);

  //beat line (horizontal line where the note needs to be hit
  strokeWeight(3);
  stroke(255);
  line (0, beatLine, width, height-100);
  fill(3, 20, 37);

  //red note
  strokeWeight(3);
  stroke (254, 44, 84);
  image (pinkNote, XPOS, redYPos, 2*RADIUS, 2*RADIUS+20);

  //blue note
  stroke(122, 253, 235);
  image (blueNote, 2*XPOS, blueYPos, 2*RADIUS, 2*RADIUS+20);

  //yellow note
  stroke(255, 232, 42);
  image (yellowNote, 3*XPOS, yellowYPos, 2*RADIUS, 2*RADIUS+20);

  //green note
  stroke(56, 255, 19);
  image (greenNote, 4*XPOS, greenYPos, 2*RADIUS, 2*RADIUS+20);

  notePosition();

  if (Score < 0) {
    Screen = 2;
  }

  if (Score >= 50) {
    Screen = 2;
  }
}
