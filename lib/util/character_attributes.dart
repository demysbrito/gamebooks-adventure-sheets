import 'package:gamebooks_adventure_sheets/util/dice_roll.dart';

int setSkill(skillValue) {
  skillValue = rollDice(skillValue) + 6;
  return skillValue;
}

int setStamina(staminaValue) {
  var dice1 = rollDice(0);
  var dice2 = rollDice(0);
  print(dice1);
  print(dice2);
  staminaValue = (dice1 + dice2) + 12;
  return staminaValue;
}

int setLuck(luckValue) {
  luckValue = rollDice(luckValue) + 6;
  return luckValue;
}
