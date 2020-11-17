
const int bzrPin = 8;
const int lightSwitch = 6;
const int redLED = 10;

#include "pitches.h"

int SongA[] = {
  NOTE_C4, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_G3, 0, NOTE_B3, NOTE_C4,0
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurationsA[] = {
  4, 8, 8, 4, 4, 4, 4, 4,4
};

int songB[] = {
  NOTE_A4, NOTE_A4, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4, NOTE_E5, NOTE_E5, NOTE_E5, NOTE_F5, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_C5, NOTE_A4
};

int noteDurationsB[] = {
  4, 4, 4, 5, 16, 4, 5, 16, 2, 4, 4, 4, 5, 16, 4, 5, 16, 2
};

int songC[] = {
  NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, NOTE_F4, NOTE_E4, NOTE_C4, NOTE_C4, NOTE_D4, NOTE_C4, NOTE_G4, NOTE_F4, NOTE_C4, NOTE_C4, NOTE_C5, NOTE_A4, NOTE_F4, NOTE_E4, NOTE_D4, NOTE_AS4, NOTE_AS4, NOTE_A4, NOTE_F4, NOTE_G4, NOTE_F4
};

int noteDurationsC[] = {
  8, 8, 4, 4, 4, 2, 8, 8, 4, 4, 4, 2, 8, 8, 4, 4, 4, 4, 4, 8, 8, 4, 4, 4, 2,
};

void setup() {
  Serial.begin(9600);

  pinMode(lightSwitch, INPUT);
  pinMode (redLED, OUTPUT);
}

void loop() {
  int sensorValue = analogRead(A0);
  int switchState = digitalRead (lightSwitch);

  if (switchState == HIGH) {
    digitalWrite (redLED, HIGH);
    if (sensorValue < 300) {
      for (int thisNote = 0; thisNote < 9; thisNote++) {
        int noteDuration = 1000 / noteDurationsA[thisNote];
        tone(8, SongA[thisNote], noteDuration);
        int pauseBetweenNotes = noteDuration * 1.30;
        delay(pauseBetweenNotes);
        noTone(8);
      }
    } else if (sensorValue < 600 && sensorValue >= 300) {
      for (int thisNote = 0; thisNote < 18; thisNote++) {
        int noteDuration = 1000 / noteDurationsB[thisNote];
        tone(8, songB[thisNote], noteDuration);
        int pauseBetweenNotes = noteDuration * 1.30;
        delay(pauseBetweenNotes);
        noTone(8);
      }
    } else {
      for (int thisNote = 0; thisNote < 25; thisNote++) {
        int noteDuration = 1000 / noteDurationsC[thisNote];
        tone(8, songC[thisNote], noteDuration);
        int pauseBetweenNotes = noteDuration * 1.30;
        delay(pauseBetweenNotes);
        noTone(8);
      }
    }
  }

  if (switchState == LOW) {
    digitalWrite (redLED, LOW);
    noTone (bzrPin);
  }

}
