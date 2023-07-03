import 'package:flutter/material.dart';

class TheWarlockProvisionsWidget extends StatefulWidget {
  const TheWarlockProvisionsWidget({super.key});

  @override
  State<TheWarlockProvisionsWidget> createState() =>
      _TheWarlockProvisionsWidgetState();
}

class _TheWarlockProvisionsWidgetState
    extends State<TheWarlockProvisionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.8, -0.7),
      children: [
        Image.asset(
          'assets/images/provisoes.png',
          width: 185,
          fit: BoxFit.fill,
        ),
        const Text(
          'Provisões',
          style: TextStyle(
            fontFamily: 'BlackChancery',
            fontSize: 20,
          ),
        ),
        const Positioned(
          left: 100,
          child: Text(
            '10',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        Positioned(
          right: -2,
          top: -5,
          child: IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
        Positioned(
          right: -2,
          top: 20,
          child: IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
