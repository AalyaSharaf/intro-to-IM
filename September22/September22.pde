void setup(){
 size(500,500);
 background (0);
}

void draw(){
  backgroundFrame();
  pattern1();
  pattern2();
  pattern3();
}

void backgroundFrame(){
  fill(0); stroke(200); strokeWeight(8);
  rect(10,10,480,480);
  fill(0); stroke(200); strokeWeight(4);
  rect(20,20, 460,460);
}

void pattern1(){
  
  fill(252,108,0); strokeWeight(1.5); stroke(255);
  
   for (int i = 30; i<450; i+=30) {
    rect(i, i, 40, 40);
  }
   for (int i=90; i<460; i+=30) {
    ellipse(i-50, i, 20, 20);
  }
  for (int i = 90; i<460; i+=30) {
    ellipse(i, i-50, 20, 20);
  }
}

void pattern2(){
  fill(121,210,230); stroke(255);
     for (int i = 30; i<220; i+=30) {
    rect(i, i+230, 30, 30);
  }
   for (int i=240; i<460; i+=30) {
    ellipse(i-190, i, 20, 20);
  }
  for (int i = 320; i<470; i+=30) {
    ellipse(i-280, i, 20, 20);
  }
}

void pattern3(){
   for (int i = 260; i<460; i+=30) {
    rect(i, i-230, 30, 30);
  }
   for (int i=240; i<460; i+=30) {
    ellipse(i, i-190, 20, 20);
  }
  for (int i = 310; i<470; i+=30) {
    ellipse(i, i-270, 20, 20);
  }
}
