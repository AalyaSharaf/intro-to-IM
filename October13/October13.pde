int maxImages1 = 8;
int maxImages2 = 13;
int imageIndex1 = 0;
int imageIndex2 = 0;

float speed = 10;
float cloudSpeed = 1;
float StickManPos = 80;
float CatPos = 20; 
float CloudPos = 30;

PImage clouds;
PImage[] StickMan = new PImage [maxImages1];
PImage[] Cat = new PImage [maxImages2];

void setup() {
  size (500, 500); 
  clouds = loadImage("clouds.png");
  
  //for loops in order to load through the series of photos saved in my data folder
  
  for (int i = 0; i < StickMan.length; i++) {
    StickMan [i] = loadImage ("Stick " + i + ".png");
  }
  
  for (int i = 0; i < Cat.length; i++){
   Cat [i] = loadImage("cat " + i +".jpeg"); 
  }
}

void draw() {
  background(255);
  
  //loading the array of images
  image(StickMan[imageIndex1], StickManPos, 247);
  image(Cat[imageIndex2], CatPos, 280);
  
  house();
  clouds();
}


void keyPressed() {
  
  //to start the animation of the stickman with the cat running behind it
  imageIndex1 = int(random(StickMan.length));
  StickManPos += speed;
  
  imageIndex2 = int(random(Cat.length));
  CatPos += speed;
  
  //to restart at the house once they reach the edge
  if (StickManPos>width) {
    StickManPos = 70;
  }
  if (CatPos>width){
   CatPos = 60; 
  }
}

void house (){
  strokeWeight(2);
  line(0,320, width, 320);
  rect(20, 220, 80,100);
  triangle(60, 170, 10,220, 110,220);
}

void clouds(){
  image(clouds, CloudPos, 20);
  CloudPos += cloudSpeed;
  
  // simple loop to have animated clouds in the sky
  if (CloudPos>100 || CloudPos<30) {
   cloudSpeed = -cloudSpeed; 
  }
}
