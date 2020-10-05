
//this is the initial fixed phrase
String beginning = "roses are red violets are blue";
String[] lines;

PFont fontA;
PFont fontB;

void setup() {
  
  fontA = createFont("Baloo", 50);
  fontB = createFont("Bradley Hand", 55);
  
  size(485, 480);
  textSize(10);
  //textFont(fontA);
  textAlign(CENTER);

  // this loads the file with the rest of the interchangeable phrases
  lines = loadStrings("Phrases.csv");
  frameRate(1);
}

void draw() {
  background(204, 255, 255);

  //separated into different functions in order to avoid confusion
  textDisplay();
  borderDesign();
}


void textDisplay() {
  // println(beginning);
  // displays the initial phrase on the canvas
 textFont(fontA);
  fill(255,51,153);
  text (beginning, 20, 55, 450, 500);

  int i;
  i = (int) random(lines.length);

  // println(lines[i]);
  // goes through the "phrases" file and randomly picks on of the sentences
  textFont(fontB);
  fill(255,153,51);
  text(lines[i], 20, 260, 460, 500);
}


void borderDesign() {
  noStroke();
  fill(0, 204, 204, 100);

// just a simple pattern in order to create a border of circles
  for (int i = 25; i<width; i += 40) {
    ellipse (i, 20, 20, 20);
  }

  for (int i = 25; i<width; i += 40) {
    ellipse (i, height-20, 20, 20);
  }

  for (int i = 20; i<height; i += 40) {
    ellipse (width-20, i, 20, 20);
  }

  for (int i = 20; i<height; i += 40) {
    ellipse (25, i, 20, 20);
  }
}
