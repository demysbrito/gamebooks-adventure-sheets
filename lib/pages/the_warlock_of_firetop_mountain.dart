import 'package:flutter/material.dart';
import 'package:gamebooks_adventure_sheets/util/character_attributes.dart';

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
  int currentMonsterStamina = 0;
  int currentHistory = 0;

  bool visibilityInitialStatus = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The warlock of the firetop mountain'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Valores iniciais'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Skill: $skillValue'),
                const SizedBox(width: 10),
                Text('Stamina: $staminaValue'),
                const SizedBox(width: 10),
                Text('Luck: $luckValue'),
              ],
            ),
            const Divider(thickness: 2),
            const Text('Valores atuais'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Skill: $currentSkill'),
                const SizedBox(width: 10),
                Text('Stamina: $currentStamina'),
                const SizedBox(width: 10),
                Text('Luck: $currentLuck'),
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
            Visibility(
              visible: visibilityInitialStatus,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    skillValue = setSkill(skillValue);
                    currentSkill = skillValue;
                    staminaValue = setStamina(staminaValue);
                    currentStamina = staminaValue;
                    luckValue = setLuck(luckValue);
                    currentLuck = luckValue;
                    visibilityInitialStatus = false;
                  });
                },
                child: const Text('Set initial Status'),
              ),
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
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          monsterSkill -= 1;
                        });
                      },
                      child: const Text('Skill -1'),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          monsterSkill += 1;
                        });
                      },
                      child: const Text('Skill +1'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Monster data'),
                    Text('Skill: $monsterSkill'),
                    Text('Energy: $monsterStamina'),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            monsterStamina -= 1;
                          });
                        },
                        child: const Text('Stamina -1')),
                    const SizedBox(width: 15),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            monsterStamina += 1;
                          });
                        },
                        child: const Text('Stamina +1')),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Container(),
                      ),
                    );
                  },
                  child: const Text('Roll for battle'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentStamina -= 2;
                      monsterSkill = 0;
                      monsterStamina = 0;
                    });
                  },
                  child: const Text('Run from battle'),
                )
              ],
            ),
            const Divider(thickness: 2)
          ],
        ),
      ),
      // bottomNavigationBar: AppBar(
      //   toolbarHeight: 64,
      //   bottom: PreferredSize(
      //     preferredSize: const Size.fromHeight(64),
      //     child: Container(
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.grey.withOpacity(0.3),
      //             blurRadius: 8,
      //             offset: const Offset(0, -3),
      //           ),
      //         ],
      //       ),

      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           IconButton(
      //             icon: const Icon(Icons.home),
      //             onPressed: () {
      //               // Ação ao pressionar o ícone "home"
      //             },
      //           ),
      //           IconButton(
      //             icon: const Icon(Icons.search),
      //             onPressed: () {
      //               // Ação ao pressionar o ícone "search"
      //             },
      //           ),
      //           IconButton(
      //             icon: const Icon(Icons.person),
      //             onPressed: () {
      //               // Ação ao pressionar o ícone "person"
      //             },
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
