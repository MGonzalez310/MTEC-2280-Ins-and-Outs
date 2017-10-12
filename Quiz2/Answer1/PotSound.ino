int potPin = 4;
int speakerPin = 7;
int A = 2270;

void setup() {
  Serial.begin(9600);

  pinMode(speakerPin, OUTPUT);
}

void loop() {
  int val = analogRead(potPin);
  //int mappedVal = map(val, 0, 990, 50, 2);
  Serial.println(val);
  for (int i = 0; i < 100; i++) {
    digitalWrite(speakerPin, HIGH);
    delayMicroseconds(A);
    digitalWrite(speakerPin, LOW);
    delayMicroseconds(A);
  }
  delay(val);
}
