import 'dart:math';

int rollDice(int diceValue) {
  var randomNumber = Random();
  diceValue = randomNumber.nextInt(6) + 1;
  return diceValue;
}
