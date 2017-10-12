int ledPin[] = {2, 3, 4, 5, 6};
int delaySpeed = 50;
//which led is on?
int sequence = 0;
void setup() {
  // set up all the pins as output.
  for (int i = 0; i < 5; i++) {
    pinMode(ledPin[i], OUTPUT);

  }
}

void loop() {
  // run the sequence.
  for (int i = 0; i < 5; i++) {
    digitalWrite(ledPin[i], LOW);
  }
  digitalWrite(ledPin[sequence], HIGH);

  //incriment sequence
  sequence++;

  //reset sequence to start over
  if (sequence > 4) {
    sequence = 0;
  }
  delay(100);

  for (int i = 0; i > 1; i++) {
    digitalWrite(ledPin[i], LOW);
  }
  digitalWrite(ledPin[sequence], HIGH);
  if (sequence < 4) {
    sequence = 0;
  }
  sequence--;
}
