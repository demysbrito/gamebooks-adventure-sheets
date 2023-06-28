import 'package:gamebooks_adventure_sheets/util/dice_roll.dart';

int setSkill(skillValue) {
  skillValue = rollDice(skillValue) + 6;
  return skillValue;
}

int setStamina(staminaValue) {
  staminaValue = rollDice(staminaValue) + rollDice(staminaValue) + 12;
  return staminaValue;
}

int setLuck(luckValue) {
  luckValue = rollDice(luckValue) + 6;
  return luckValue;
}
