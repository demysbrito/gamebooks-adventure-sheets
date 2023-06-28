import 'package:flutter/material.dart';
import 'package:gamebooks_adventure_sheets/util/character_attributes.dart';
import 'package:gamebooks_adventure_sheets/util/dice_roll.dart';

class TheWarlockOfFiretopMountain extends StatefulWidget {
  const TheWarlockOfFiretopMountain({super.key});
  @override
  State<TheWarlockOfFiretopMountain> createState() =>
      _TheWarlockOfFiretopMountainState();
}

class _TheWarlockOfFiretopMountainState
    extends State<TheWarlockOfFiretopMountain> {
  int diceValue = 0;
  int skillValue = 0;
  int currentSkill = 0;
  int staminaValue = 0;
  int currentStamina = 0;
  int luckValue = 0;
  int currentLuck = 0;
  int provisionsValue = 0;
  int goldValue = 0;
  int monsterSkill = 0;
  int monsterStamina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The warlock of the firetop mountain'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Valor do dado: $diceValue',
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  diceValue = rollDice(diceValue);
                });
              },
              child: const Text('Roll dice'),
            ),
            const Divider(
              thickness: 2,
            ),
            const Text('Valores iniciais'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Skill: $skillValue'),
                const SizedBox(width: 10),
                Text('Stamina: $staminaValue'),
                const SizedBox(width: 10),
                Text('Luck: $luckValue'),
              ],
            ),
            Text('Provisions: $provisionsValue'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      provisionsValue = eatProvision(provisionsValue);
                    });
                  },
                  child: const Text('Eat provision'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      provisionsValue = addProvision(provisionsValue);
                    });
                  },
                  child: const Text('Add provision'),
                ),
              ],
            ),
            const Text('Items'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  skillValue = setSkill(skillValue);
                  staminaValue = setStamina(staminaValue);
                  luckValue = setLuck(luckValue);
                });
              },
              child: const Text('Set initial Status'),
            ),
            const Divider(thickness: 2),
            const Text('Gold'),
            Text('$goldValue GP'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          goldValue = addGold(goldValue, 1);
                        });
                      },
                      child: const Text('Add 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          goldValue = addGold(goldValue, 5);
                        });
                      },
                      child: const Text('Add 5'),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          goldValue = removeGold(goldValue, 1);
                        });
                      },
                      child: const Text('Remove 1'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          goldValue = removeGold(goldValue, 5);
                        });
                      },
                      child: const Text('Remove 5'),
                    ),
                  ],
                )
              ],
            ),
            const Divider(thickness: 2),
            const Text('Battle'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Monster data'),
                    Text('Skill: $monsterSkill'),
                    Text('Energy: $monsterStamina'),
                  ],
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Roll for battle'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
