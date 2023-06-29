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
  return ['Sword', 'Leather armor', 'Backpack'];
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

battle(currentSkill, currentEnergy, monsterSkill, monsterStamina) {
  var monsterAttack = rollDice(0) + rollDice(0) + monsterSkill;
  var heroAttack = rollDice(0) + rollDice(0) + currentSkill;
  if (heroAttack > monsterAttack) {
    return 'Hero win';
  } else if (monsterSkill > heroAttack) {
    return 'Monster win';
  } else {
    return 'Draw';
  }
}

testLuck(currentLuck) {
  var heroValue = rollDice(0) + rollDice(0);
  if (heroValue <= currentLuck) {}
}
