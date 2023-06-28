import 'package:gamebooks_adventure_sheets/util/dice_roll.dart';

int setSkill(skillValue) {
  skillValue = rollDice(skillValue) + rollDice(skillValue);
  return skillValue;
}

int setStamina(staminaValue) {
  staminaValue = rollDice(staminaValue) + rollDice(staminaValue);
  return staminaValue;
}

int setLuck(luckValue) {
  luckValue = rollDice(luckValue) + rollDice(luckValue);
  return luckValue;
}
