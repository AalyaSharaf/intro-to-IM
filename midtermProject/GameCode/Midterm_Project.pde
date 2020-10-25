int gameScreen = 0;

PImage spaceBackground;
PShape Heart;
PShape Alien;
PShape Rocket;

float HeartX1 = 10;
float HeartX2 = 60;
float HeartX3 = 110;
float ShipXPos = width/2;
float ShipYPos1 = 550;
float ShipYPos2 = 570;
float ShipSpeed = 5;

import processing.sound.*;
SoundFile GameSound;

Meteorite [] meteorites = new Meteorite[4];

void setup() {
  size (600, 600);
  spaceBackground = loadImage("spaceBackground.jpg");
  GameSound = new SoundFile(this, "GameSound.mp3");
  Heart = loadShape("Heart.svg");
  Alien = loadShape("alien.svg");
  Rocket = loadShape("rocket.svg");

  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i] = new Meteorite();
  }
}

void draw() {
  GameSound.play();
  GameSound.amp(0.01);
  // the gamescreen variable allows to easliy switch between screens.
  // 0: Home Screen, 1: Game Screen, 2: Game Over Screen
  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if ( gameScreen == 2) {
    gameOverScreen();
    loop();
  }
}

void mousePressed() {
  //this is to be able to transition between the different game screens
  if (gameScreen == 0) {
    startGame();
  }
  if (gameScreen == 2) {
    resetGame();
  }
}

void startGame() {
  gameScreen = 1;
}

void resetGame() {
  ShipXPos = width/2;
  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i] = new Meteorite();
  }
  HeartX1 = 10;
  HeartX2 = 60;
  HeartX3 = 110;
  gameScreen = 0;
}
