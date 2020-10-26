//creating a class of meteorites so it can be utilized in an array

class Meteorite {

  float MetX;
  float MetY;
  float diameter;
  float yspeed;

  Meteorite() {
    MetX = random(50, width-50);
    MetY = random(-200, -100);
    diameter = random(30, 80);
    yspeed = random(3, 10);
  }

  void display() {
    stroke(255);
    fill(120);
    ellipse (MetX, MetY, diameter, diameter);
  }

  void descend() {

    //adds random falling speed to metoerites

    MetY += yspeed;

    //this makes it so that the meteorites reset at a new position with a new speed and size everytime
    //it reaches the bottom of the canvas

    if (MetY>height) {
      yspeed = random(3, 10); 
      MetX = random(50, width-50);
      diameter = random(30, 80);
      MetY = random(-200, -100);
    }
  }

  void checkCollisions() {

    //the Game Lives is incorporated in this part. The loops are there so that everytime there is a collision
    //you lose a life, until there are no more lives & you lose the game.
    //the collisions are measured using the dist functions.

    float d1 = dist(MetX, MetY, ShipXPos, ShipYPos1);
    float d2 = dist(MetX, MetY, ShipXPos, ShipYPos2);

    if (d2<diameter/2) {
      for (int i = 0; i < meteorites.length; i++) {
        meteorites[i] = new Meteorite();
      } 
      HeartX3 = -200; //when a meteorite hits, the heart moves off screen
      background(153, 0, 0, 10); //a red flash that appears to warn you that you have lost a life.
      
    } else if (d2<diameter && HeartX3 == -200) {
      HeartX2 = -200;
      background(153, 0, 0, 10);
      
    } else if (d1<diameter && HeartX2 == -200) {
      HeartX1 = -200;
      gameScreen = 2;
    }
  }
}
