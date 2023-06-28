import 'package:flutter/material.dart';

class ReturnToFiretopMountain extends StatefulWidget {
  const ReturnToFiretopMountain({super.key});
  @override
  State<ReturnToFiretopMountain> createState() =>
      _ReturnToFiretopMountainState();
}

class _ReturnToFiretopMountainState extends State<ReturnToFiretopMountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Return to firetop mountain')),
      body: const Center(
        child: Text('Return to firetop mountain page'),
      ),
    );
  }
}
