int redButton = 8;
int yellowButton = 6;
int blueButton = 7;
int greenButton = 5;

void setup() {
  
  Serial.begin(9600);

  pinMode (redButton, INPUT);
  pinMode (blueButton, INPUT);
  pinMode (yellowButton, INPUT);
  pinMode (greenButton, INPUT);

  }


void loop() {

  int redState = digitalRead (redButton);
  int blueState = digitalRead (blueButton);
  int yellowState = digitalRead (yellowButton);
  int greenState = digitalRead (greenButton);

  //Serial.println (greenState);

//each number corresponds to a color and this makes it easier for processing to read when a button is pressed
  if (redState == HIGH) {
    Serial.println("1");
  } else if (blueState == HIGH) {
    Serial.println ("2");
  } else if (yellowState == HIGH) {
    Serial.println ("3");
  } else if (greenState == HIGH) {
    Serial.println ("4");
  } else {
    //so processing doesn't confuse when a button is pressed and when it is not
    Serial.println ("0");
  }


}
