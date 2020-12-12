void notePosition() {
  
  //the initial speeds of the note
  speed = 2;
  
  //increases the speed as the score/level uncreases
  if (Score >= 10) {
    speed = 2.5;
  } 
  if (Score >= 20) {
    speed = 3;
  } 
  if (Score >= 30) {
    speed = 3.5;
  }
  if (Score >= 40) {
    speed = 4;
  }


  redYPos += speed;
  
  //these functions are for when a note is missed, and a point is deducted if that happens
  if (redYPos > height-100) {
    if (!redHit) {
      Score --;
    }
    redYPos = random (-1000, -100);
    redHit = false;
  }

  blueYPos += speed;
  if (blueYPos > height-100) {
    if (!blueHit) {
      Score --;
    }
    blueYPos = random (-1000, -100);
    blueHit = false;
  }

  yellowYPos += speed;
  if (yellowYPos > height-100) {
    if (!yellowHit) {
      Score --;
    }
    yellowYPos = random (-1000, -100);
    yellowHit = false;
  }


  greenYPos += speed;
  if (greenYPos > height-100) {
    if (!greenHit) {
      Score --;
    }
    greenYPos = random (-1000, -100);
    greenHit = false;
  }
}

void levels() {
  //this corresponds to the speed that increases with the score
  //when the speed increases, the text for the level increases as well
  if (speed == 2) {
    text ("Level: 1", 20, 90);
  } else if (speed == 2.5) {
    text ("Level: 2", 20, 90);
  } else if (speed == 3) {
    text ("Level: 3", 20, 90);
  } else if (speed == 3.5) {
    text ("Level: 4", 20, 90);
  } else if (speed == 4) {
    text ("Level: 5", 20, 90);
  }
}


void gameScore() {
  //displays the score of the game on the screen
  fill (255);
  textSize (20);
  textFont(screenFont);
  text ("Score: " + Score, 20, 40);
}
