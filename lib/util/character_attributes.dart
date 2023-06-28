import 'package:gamebooks_adventure_sheets/util/dice_roll.dart';

int setSkill(skillValue) {
  skillValue = rollDice(skillValue) + 6;
  return skillValue;
}

int setStamina(staminaValue) {
  staminaValue = rollDice(0) + rollDice(0) + 12;
  return staminaValue;
}

int setLuck(luckValue) {
  luckValue = rollDice(luckValue) + 6;
  return luckValue;
}

initialItems() {
  return ['Sword', 'shield'];
}

int addGold(goldValue, valueToAdd) {
  goldValue += valueToAdd;
  return goldValue;
}

int removeGold(goldValue, valueToRemove) {
  goldValue -= valueToRemove;
  return goldValue;
}

int addProvision(provisionValue) {
  provisionValue += 1;
  return provisionValue;
}

int eatProvision(provisionValue) {
  provisionValue -= 1;
  return provisionValue;
}
