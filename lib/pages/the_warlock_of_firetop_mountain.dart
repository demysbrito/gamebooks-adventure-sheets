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
  int staminaValue = 0;
  int luckValue = 0;

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
            ElevatedButton(
              onPressed: () {
                setState(() {
                  skillValue = setSkill(skillValue);
                  staminaValue = setSkill(staminaValue);
                  luckValue = setSkill(luckValue);
                });
              },
              child: const Text('Set initial Status'),
            ),
            const Divider(thickness: 2)
          ],
        ),
      ),
    );
  }
}
