int gameScreen = 0;
PImage spaceBackground;
PShape Heart;
float HeartX1 = 10;
float HeartX2 = 60;
float HeartX3 = 110;
float ShipXPos = width/2;
float ShipYPos = 550;
float ShipSpeed = 5;

Meteorite [] meteorites = new Meteorite[4];

void setup() {
  size (600, 600);
  spaceBackground = loadImage("spaceBackground.jpg");
  Heart = loadShape("Heart.svg");

  for (int i = 0; i < meteorites.length; i++) {
    meteorites[i] = new Meteorite();
  }
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

void startGame(){
 gameScreen = 1; 
}

void resetGame(){
  ShipXPos = width/2;
  meteorites[3].resetObject();
  gameScreen = 0;
}
