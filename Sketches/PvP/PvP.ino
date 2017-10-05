// each player will have a button pin
int player1pin = 8;
int player2pin = 4;
int p1_LED = 8;
int p2_LED = 4;
// keep track of button state
int p1_prevButtonState;
int p1_buttonState;
int p1_counter;
// same for player 2
int p2_prevButtonState;
int p2_buttonState;
int p2_counter;
int countdown = 2000; // how many cycles will the game last?

void setup() {

  Serial.begin(9600);
  pinMode(p1_LED, OUTPUT);
  pinMode(p2_LED, OUTPUT);
  // set up for buttons
  pinMode(player1pin, INPUT_PULLUP);
  pinMode(player2pin, INPUT_PULLUP);

}

void loop() {

  // is the game still on?
  if (countdown > 0) {

    // read each player's pins
    p1_buttonState = digitalRead(player1pin);
    p2_buttonState = digitalRead(player2pin);

    // if the state changed for p1, add a point
    if (p1_buttonState == 0 && p1_prevButtonState == 1) {
      p1_counter++;
    }

    // same for p2
    if (p2_buttonState == 0 && p2_prevButtonState == 1) {
      p2_counter++;
    }

    // make sure to reset previous button state vars so we can
    // keep track of state changes
    p1_prevButtonState = p1_buttonState;
    p2_prevButtonState = p2_buttonState;

    // print the countdown for more excitement.
    countdown--;
    Serial.println(countdown);

  } else {

    // end of game, countdown timer is up!

    // print the score out the serial, one bit at a time
    // notice print vs println
    Serial.print("p1: ");
    Serial.print(p1_counter);
    Serial.print(", p2: ");
    Serial.println(p2_counter); // println does a line return after it's done
  }
 // if (p1_counter > p2_counter) {
   // digitalWrite(p1_LED, HIGH);
  //} else {
    //(p1_LED, LOW);
  //}
  //if (p1_counter < p2_counter) {
    //digitalWrite(p2_LED, HIGH);
  //} else {
    //(p12_LED, LOW);
  //}
}
//}
