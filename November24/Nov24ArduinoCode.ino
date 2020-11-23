const int triggerPin = 11;
const int echoPin = 10;
const int ledPin = 8;

void setup() {
  pinMode (ledPin, OUTPUT);
  pinMode (triggerPin, OUTPUT);
  pinMode (echoPin, INPUT);
  Serial.begin (9600);
}

void loop() {

  if (Serial.available () > 0) {
    char state  = Serial.read ();
    if (state == '1') {
      digitalWrite (ledPin, HIGH);
    }

    if (state == '0') {
      digitalWrite (ledPin, LOW);
    }

     delay (10);
  }

  long duration, cm;     //variables for storage
  digitalWrite (triggerPin, LOW);
  delayMicroseconds (2);
  digitalWrite (triggerPin, HIGH);
  delayMicroseconds (5);
  digitalWrite (triggerPin, LOW);
  duration = pulseIn (echoPin, HIGH);

  //converting the time (microseconds) into a distance
  cm = microsecondsToCentimeters(duration);
  long inch = cm / 2.54;
  Serial.println(cm);

}

long microsecondsToCentimeters(long microseconds) {
  //29 because the speed if sound is 29 microseconds per cm
  //2 because the sound needs to travel the distnace twice, to the object and back
  return microseconds / 29 / 2;
}
