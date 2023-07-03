import 'package:flutter/material.dart';

class TheWarlockGoldWidget extends StatefulWidget {
  const TheWarlockGoldWidget({super.key});

  @override
  State<TheWarlockGoldWidget> createState() => _TheWarlockGoldWidgetState();
}

class _TheWarlockGoldWidgetState extends State<TheWarlockGoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.8, -0.7),
      children: [
        Image.asset(
          'assets/images/ouro.png',
          width: 185,
          fit: BoxFit.fill,
        ),
        const Text(
          'Ouro',
          style: TextStyle(
            fontFamily: 'BlackChancery',
            fontSize: 20,
          ),
        ),
        const Positioned(
          left: 70,
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
