import 'package:flutter/material.dart';

class TheWarlockPotionsWidget extends StatefulWidget {
  const TheWarlockPotionsWidget({super.key});

  @override
  State<TheWarlockPotionsWidget> createState() =>
      _TheWarlockPotionsWidgetState();
}

class _TheWarlockPotionsWidgetState extends State<TheWarlockPotionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.8, -0.90),
      children: [
        Image.asset(
          'assets/images/pocoes.png',
          width: 185,
          fit: BoxFit.fill,
        ),
        const Text(
          'Poções',
          style: TextStyle(
            fontFamily: 'BlackChancery',
            fontSize: 20,
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
      ],
    );
  }
}
