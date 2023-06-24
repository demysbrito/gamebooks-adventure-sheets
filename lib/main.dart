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
        child: Column(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: rollDice,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
