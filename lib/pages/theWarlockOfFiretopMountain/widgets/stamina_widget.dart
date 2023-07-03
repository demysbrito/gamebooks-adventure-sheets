import 'package:flutter/material.dart';

class TheWarlockStaminaWidget extends StatefulWidget {
  final int initialStamina;
  final int currentStamina;
  const TheWarlockStaminaWidget(
      {super.key, required this.initialStamina, required this.currentStamina});

  @override
  State<TheWarlockStaminaWidget> createState() =>
      _TheWarlockStaminaWidgetState();
}

class _TheWarlockStaminaWidgetState extends State<TheWarlockStaminaWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.5, -0.8),
      children: [
        Image.asset(
          'assets/images/energia.png',
          height: 160,
          fit: BoxFit.fill,
        ),
        const Text(
          'Energia',
          style: TextStyle(fontFamily: 'BlackChancery', fontSize: 20),
        ),
        const Positioned(
          top: 38,
          left: 18,
          child: Text(
            'Inicial:',
            style: TextStyle(fontFamily: 'Heuristica'),
          ),
        ),
        Positioned(
          top: 30,
          left: 70,
          child: Text(
            widget.initialStamina.toString(),
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF14832C)),
          ),
        ),
        Positioned(
          top: 55,
          left: 32,
          child: Text(
            widget.currentStamina.toString(),
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 110,
          left: 10,
          child: IconButton(
            icon: const Icon(
              Icons.remove,
              color: Color(0xFF14832C),
            ),
            iconSize: 30,
            onPressed: () {},
          ),
        ),
        Positioned(
          top: 110,
          left: 60,
          child: IconButton(
            icon: const Icon(
              Icons.add,
              color: Color(0xFF14832C),
            ),
            iconSize: 30,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
