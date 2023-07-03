import 'package:flutter/material.dart';

class TheWarlockJewelsWidget extends StatefulWidget {
  const TheWarlockJewelsWidget({super.key});

  @override
  State<TheWarlockJewelsWidget> createState() => _TheWarlockJewelsWidgetState();
}

class _TheWarlockJewelsWidgetState extends State<TheWarlockJewelsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.8, -0.9),
      children: [
        Image.asset(
          'assets/images/joias.png',
          width: 185,
          height: 206,
          fit: BoxFit.fill,
        ),
        const Text(
          'Jóias',
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
