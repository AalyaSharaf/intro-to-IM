petals p1 = new petals(20, 3); 
petals p2 = new petals(50, 4); 

void setup() 
{
  size(400, 400);
  frameRate(20);
}

void draw() { 
  background(153, 204, 255);
  p1.update(); 
  p2.update(); 
  p1.flowerDisplay();
} 

class petals { 
  float ypos, speed; 
  petals (float _ypos, float _speed) {  
    ypos = _ypos; 
    speed = _speed;
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0;
    } 
    fill(255, 178, 102);
    for (int i = 30; i<width; i+=50) {
      ellipse(i, ypos, 30, 30);
    }
  }

  void flowerDisplay() {
    translate(width/2, height/2);
    for (int i = 100; i<width; i++) {
      fill(255, 128, 0);
      ellipse (0, -35, 50, 50);
      rotate(radians(72));
      fill(255, 255, 0);
      ellipse (0, 0, 50, 50);
    }
  }
} 
