import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int rollNumber = 0;
  int dice1 = 0;
  int dice2 = 0;
  bool visible = false;
  List<String> books = [
    'The Warlock of Firetop Mountain',
    'The Citadel of Chaos',
    'The Forest of Doom',
    'Starship Traveller',
    'City of Thieves',
    'Deathtrap Dungeon',
    'Island of the Lizard King',
    'Scorpion Swamp',
    'Caverns of the Snow Witch',
    'House of Hell',
    'Talisman of Death',
    'Space Assassin',
    'Freeway Fighter',
    'Temple of Terror',
    'The Rings of Kether',
    'Seas of Blood',
    'Appointment with F.E.A.R.',
    'Rebel Planet',
    'Demons of the Deep',
    'Sword of the Samurai',
    'Trial of Champions',
    'Robot Commando',
    'Masks of Mayhem',
    'Creature of Havoc',
    'Beneath Nightmare Castle',
    'Crypt of the Sorcerer',
    'Star Strider',
    'Phantoms of Fear',
    'Midnight Rogue',
    'Chasms of Malice',
    'Battleblade Warrior',
    'Slaves of the Abyss',
    'Sky Lord',
    'Stealer of Souls',
    'Daggers of Darkness',
    'Armies of Death',
    'Portal of Evil',
    'Vault of the Vampire',
    'Fangs of Fury',
    'Dead of Night',
    'Master of Chaos',
    'Black Vein Prophecy',
    'The Keep of the Lich-Lord',
    'Legend of the Shadow Warriors',
    'Spectral Stalkers',
    'Tower of Destruction',
    'The Crimson Tide',
    'Moonrunner',
    'Siege of Sardath',
    'Return to Firetop Mountain',
    'Island of the Undead',
    'Night Dragon',
    'Spellbreaker',
    'Legend of Zagor',
    'Deathmoor',
    'Knights of Doom',
    'Magehunter',
    'Revenge of the Vampire',
    'Curse of the Mummy',
  ];

  int rollDice() {
    var value = Random();
    setState(() {
      visible = true;
      rollNumber = value.nextInt(6) + 1;
    });
    return rollNumber;
  }

  int rollTwoDices() {
    rollNumber = 0;
    setState(() {
      dice1 = rollDice();
    });
    setState(() {
      dice2 = rollDice();
    });
    setState(() {
      rollNumber = dice1 + dice2;
    });
    return rollNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          final item = books[index];
          return ListTile(
            title: Text(item),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: rollDice,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

/*
Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: visible,
              child: Column(
                children: [
                  const Text(
                    'The roll number',
                  ),
                  Text(
                    '$rollNumber',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Dado 1',
                    ),
                    Text(
                      '$dice1',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'Dado 2',
                    ),
                    Text(
                      '$dice2',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                )
              ],
            ),
            FilledButton(onPressed: rollDice, child: const Text('Rolar dado')),
            FilledButton(
                onPressed: rollTwoDices, child: const Text('Rolar 2 dados'))
          ],
        ),
*/