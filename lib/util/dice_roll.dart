import 'dart:math';

int diceValue = 0;

int rollDice() {
  var randomNumber = Random();
  diceValue = randomNumber.nextInt(6) + 1;
  return diceValue;
}
