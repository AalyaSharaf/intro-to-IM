
void setup() {
  size(300, 300);
}

void draw() {
  background(255);
  frameRate(2);
  face(); body(); legs(); arms();
}

void face() {
 //face
 fill(50);
  ellipse(140,80,75,90);
  noStroke();
  fill(255, 220, 177);
  ellipse(140, 80, 60, 75);
  
//eyes
  stroke(1);
  fill(255);
  ellipse(130, 67, 10, 5);
  ellipse(150, 67, 10, 5);
  fill(0);
  ellipse(130, 66, 5, 2);
  ellipse(150, 66, 5, 2);
  
//eyebrows
  arc(130, 60, 15, 5, radians(190), radians(355));
  arc(150, 60, 15, 5, radians(190), radians(355));
  
//nose
  strokeWeight(1.5);
  line(140, 72, 140, 80);
  
//mouth
  fill(255, 0, 0);
  arc(140, 90, 20, 10, radians(0), radians(180), CHORD);
}

void body() {
  fill(200,200,0);
  line(110,130,110,180); line(170,130,170,180); line(110,180,170,180);
  fill(250);
  line(120,120,110,130); line(160,120,170,130);
}

void legs(){
  fill(0,180,180,90);
  rect(110,180,30,80); rect(140,180,30,80);
}

void arms(){
  line(110,130,90,180); line(170,130, 190,180);
  noStroke();
  fill(255, 220, 177);
  ellipse(93,177,10,10); ellipse(189,177,10,10);
}
