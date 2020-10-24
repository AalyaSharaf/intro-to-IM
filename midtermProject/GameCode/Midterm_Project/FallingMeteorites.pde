//creating a class of meteorites to then be utilized in an array
class Meteorite {

  float MetX;
  float MetY;
  float diameter;
  float yspeed;

  Meteorite() {
    MetX = random(50, width-50);
    MetY = random(-200, -100);
    diameter = random(30, 100);
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

    if (MetY>height) {
      yspeed = random(3, 10); 
      MetX = random(50, width-50);
      diameter = random(30, 100);
      MetY = random(-200, -100);
    }
  }

  void checkCollisions() {
    float d = dist(MetX, MetY, ShipXPos, ShipYPos);
    if (d<diameter-30) {
     gameScreen = 2;
    } 
  }

  void resetObject() {
    MetY = random(-200, -200);
  }
}
