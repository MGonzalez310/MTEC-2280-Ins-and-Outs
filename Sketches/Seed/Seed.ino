void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  randomSeed(28656476978947645699864);
}

void loop() {
  //
  int myRand = random(10);
  Serial.println(myRand);
  
  delay(2000);
}
