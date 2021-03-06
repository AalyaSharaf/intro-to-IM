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

  //all these are to load any images or sounds I have into my program

  size (600, 600);
  spaceBackground = loadImage("spaceBackground.jpg");
  GameSound = new SoundFile(this, "GameSound.mp3");
  Heart = loadShape("Heart.svg");
  Alien = loadShape("alien.svg");
  Rocket = loadShape("rocket.svg");

  //this is a basic for loop used so I can call on my array 

  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i] = new Meteorite();
  }

  //I opted to play the sound in setup rather than draw.
  //It worked just fine in draw but I wanted the song to play at all times anyways so it made more sense to have it in setup

  GameSound.play();
  GameSound.amp(0.08);
}

void draw() {

  // the gamescreen variable allows to easliy switch between screens.
  // 0: Home Screen, 1: Game Screen, 2: Game Over Screen

  if (gameScreen == 0) {
    homeScreen();
  } else if (gameScreen == 1) {
    gameScreen();
  } else if ( gameScreen == 2) {
    gameOverScreen();
  }
}

void mousePressed() {

  //this is to be able to transition between the different game screens when the mouse is pressed

  if (gameScreen == 0) {
    startGame();
  }
  if (gameScreen == 2) {
    resetGame();
  }
}

void keyPressed() {

  //this is more based on audience preference and whether they want the music playing or not

  if (key == 'm') {
    if (GameSound.isPlaying()) {
      GameSound.pause();
    }
  } else if (key == 'p') {
    GameSound.play();
  }
}

void startGame() {
  gameScreen = 1;
}

void resetGame() {

  //all the details that are needed to start a new game are stored in this functions so that everytime
  //the game is over, they are loaded again. 

  ShipXPos = width/2;

  //this resets the meteorites at the top of the screen

  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i] = new Meteorite();
  }

  //this replaces with new game lives

  HeartX1 = 10;
  HeartX2 = 60;
  HeartX3 = 110;
  gameScreen = 0;
}
