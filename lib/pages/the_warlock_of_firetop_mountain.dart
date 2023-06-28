import 'package:flutter/material.dart';

class TheWarlockOfFiretopMountain extends StatefulWidget {
  const TheWarlockOfFiretopMountain({super.key});

  @override
  State<TheWarlockOfFiretopMountain> createState() =>
      _TheWarlockOfFiretopMountainState();
}

class _TheWarlockOfFiretopMountainState
    extends State<TheWarlockOfFiretopMountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The warlock of the firetop mountain'),
      ),
      body: const Center(
        child: Text('The warlock of the firetop mountain page'),
      ),
    );
  }
}
