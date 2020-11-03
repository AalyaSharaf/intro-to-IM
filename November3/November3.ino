const int redButton = 7;
const int yellowButton = 5;
const int blueButton = 4;
const int greenButton = 8; 

void setup() {
  Serial.begin(9600);

  //all the momentary switches (buttons) as inputs
  pinMode(redButton, INPUT); 
  pinMode(yellowButton, INPUT);
  pinMode(blueButton, INPUT);
  pinMode(greenButton, INPUT);

  //all the LEDs as outputs
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(11, OUTPUT);

  //the light pattern that starts the puzzle
  lightPattern();
}

void loop() {
  int redButtonState = digitalRead (redButton);
  int yellowbuttonState = digitalRead (yellowButton);
  int blueButtonState = digitalRead (blueButton);
  int greenButtonState = digitalRead (greenButton);
  
  Serial.println(greenButtonState);
  delay(1);

//connecting the red button & red LED
  if (redButtonState == HIGH){
    digitalWrite (LED_BUILTIN, HIGH);
  } else {
    digitalWrite (LED_BUILTIN, LOW);
  }

//connecting the yellow button & yellow LED
  if (yellowbuttonState == HIGH){
    digitalWrite (11, HIGH);
  } else {
    digitalWrite (11, LOW);
  }

//connecting the blue button & blue LED
   if (blueButtonState == HIGH){
    digitalWrite (9, HIGH);
  } else {
    digitalWrite (9, LOW);
  }

//when pressed, the light pattern will reappear
  if (greenButtonState == HIGH){
    lightPattern();
  }

}
void lightPattern() {
  
  //the light pattern that is going to be shown. 
  digitalWrite(LED_BUILTIN, HIGH);
  delay(500);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(9, HIGH);
  delay(500);
  digitalWrite(9, LOW);
  delay(500);
  digitalWrite(11, HIGH);
  delay(500);
  digitalWrite(11, LOW);
  delay(500);
  digitalWrite(11, HIGH);
  delay(500);
  digitalWrite(11, LOW);
  delay(500);
  digitalWrite(LED_BUILTIN, HIGH);
  delay(500);
  digitalWrite(LED_BUILTIN, LOW);
  delay(500);
  digitalWrite(9, HIGH);
  delay(500);
  digitalWrite(9, LOW);
  delay(500);
  digitalWrite(11, HIGH);
  delay(500);
  digitalWrite(11, LOW);
  delay(500);

}
