import processing.serial.*;

Serial myPort;

import processing.sound.*;
SoundFile gameSong;

PImage gameBackground;
PImage gameOverBackground;
PImage winningScreenBackground;
PImage pinkNote;
PImage blueNote;
PImage yellowNote;
PImage greenNote;
PFont screenFont;

int Screen = 0;
int beatLine;
int RADIUS;
int Score;

float speed;
float redYPos;
float blueYPos;
float yellowYPos;
float orangeYPos;
float greenYPos;
float purpleYPos;
float YPOS = random (-1000, -100);
float XPOS = 200;

//to indicate wheher the notes were hit or not (true/false)
boolean redHit;
boolean blueHit;
boolean yellowHit;
boolean orangeHit;
boolean greenHit;
boolean purpleHit;


void setup() {
  size (1000, 700);
  background(255);
  myPort = new Serial (this, Serial.list()[2], 9600);
  myPort.bufferUntil ('\n');
  
  //loading all the needed images and sounds for the game.
  gameSong = new SoundFile (this, "gameSound.mp3");
  gameBackground = loadImage ("gameBackground.png");
  gameOverBackground = loadImage ("gameOverScreen.png");
  winningScreenBackground = loadImage ("youWinScreen.png");
  pinkNote = loadImage ("pinkNote.png");
  blueNote = loadImage ("blueNote.png");
  yellowNote = loadImage ("yellowNote.png");
  greenNote = loadImage ("greenNote.png");
  screenFont = createFont ("Herculanum-Regular.ttf", 32);
  
  //the line where the note needs to  be hit
  beatLine = height-100;
  RADIUS = 40;
  
  //initializing the positions as well as the state of the boolean expressions
  redYPos = random(-1000, -100);
  redHit = false;
  blueYPos = random(-1000, -100);
  blueHit = false;
  yellowYPos = random(-1000, -100);
  yellowHit = false;
  orangeYPos = random(-1000, -100);
  orangeHit = false;
  greenYPos = random(-1000, -100);
  greenHit = false;
  purpleYPos = random(-1000, -100);
  purpleHit = false;
}

void draw () {
  //setting up different screens
  if (Screen == 0) {
    homeScreen ();
  } else if (Screen == 1) {
    gameScreen();
    if (!gameSong.isPlaying()){
      gameSong.play();
    }
  } else if (Screen == 2) {
    gameOverScreen();
    gameSong.stop();
  }
}

void serialEvent (Serial myPort) {
  
  String inString = myPort.readString();
  inString = trim(inString);
  println (inString);
  
  //red button is 1, so if the button is pressed do the following:
  
  if (inString.equals ("1")) {
    
    //specifies a specific area of the musical note (in relation to the radius)
    //indicates that if the hit is true, then the score increases
    
    if ((redYPos > beatLine - 2*RADIUS) && (redYPos < beatLine + 2*RADIUS) && !redHit) {
      Score ++;
    } 
    redHit = true;
  }
  
  //blue button is 2 (the same process that happens with red repeats
  
  if (inString.equals ("2")) {
    if ((blueYPos > beatLine - 2*RADIUS) && (blueYPos < beatLine + 2*RADIUS) && !blueHit) {
      Score ++;
    } 
    blueHit = true;
  }
  
  //yellow button is 3
  if (inString.equals ("3")) {
    if ((yellowYPos > beatLine - 2*RADIUS) && (yellowYPos < beatLine + 2*RADIUS) && !yellowHit) {
      Score ++;
    }
    yellowHit = true;
  }
  
  //green button is 4
  if (inString.equals ("4")) {
    if ((greenYPos > beatLine - 2*RADIUS) && (greenYPos < beatLine + 2*RADIUS) && !greenHit) {
      Score ++;
    } 
    greenHit = true;
  }
}


void mousePressed() {
  //to transition between the screens
  if (Screen == 0) {
    Screen = 1;
  } else if (Screen == 1) {
    Screen = 2;
  } else if (Screen == 2) {
    resetGame();
  }
}

void resetGame() {
  
  //to restart the info of the game
  
  redYPos = random (-1000, -100);
  blueYPos = random (-1000, -100);
  yellowYPos = random (-1000, -100);
  orangeYPos = random (-1000, -100);
  greenYPos = random (-1000, -100);
  purpleYPos = random (-1000, -100);

  Score = 0;
  Screen = 0;
  speed = 0;
}
