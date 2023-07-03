import 'package:flutter/material.dart';

class TheWarlockLuckWidget extends StatefulWidget {
  final int initialLuck;
  final int currentLuck;

  const TheWarlockLuckWidget(
      {super.key, required this.initialLuck, required this.currentLuck});

  @override
  State<TheWarlockLuckWidget> createState() => _TheWarlockLuckWidgetState();
}

class _TheWarlockLuckWidgetState extends State<TheWarlockLuckWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.6, -0.8),
      children: [
        Image.asset(
          'assets/images/sorte.png',
          height: 160,
          fit: BoxFit.fill,
        ),
        const Text(
          'Sorte',
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
            widget.initialLuck.toString(),
            style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF14832C)),
          ),
        ),
        Positioned(
          top: 55,
          left: 32,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              widget.currentLuck.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
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
