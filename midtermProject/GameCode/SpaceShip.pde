void drawSpaceShip() {
  noStroke();
  fill(0, 255, 255);
  ellipse (ShipXPos, ShipYPos1, 50, 50);
  fill(0, 204, 0);
  ellipse(ShipXPos, ShipYPos2, 90, 30);
}

void moveSpaceShip() {
  //Controls to move the spaceship
  if (keyPressed) {
    if (key =='d' || keyCode == RIGHT) {
      ShipXPos += ShipSpeed;
    } 
    if (key == 'a' || keyCode == LEFT) {
      ShipXPos += -ShipSpeed;
    }
  }
  // these two if statements creates a boundary so spaceship cant go off screen. 
  if (ShipXPos < 0) {
    ShipXPos += 5;
  } 
  if (ShipXPos>width) {
    ShipXPos += -5;
  }
}

void gameLives() {
 shape(Heart, HeartX1, 10, 50, 50);
 shape(Heart, HeartX2, 10, 50, 50);
 shape(Heart, HeartX3, 10, 50, 50);
}

void homeDesign(){
  shape(Alien, -30, height-200, 240, 240);
  shape(Rocket, 400, 10, 200,200);
}
