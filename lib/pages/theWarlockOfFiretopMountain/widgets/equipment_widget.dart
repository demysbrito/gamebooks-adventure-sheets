import 'package:flutter/material.dart';

class TheWarlockEquipmentWidget extends StatefulWidget {
  const TheWarlockEquipmentWidget({super.key});

  @override
  State<TheWarlockEquipmentWidget> createState() =>
      _TheWarlockEquipmentWidgetState();
}

class _TheWarlockEquipmentWidgetState extends State<TheWarlockEquipmentWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(-0.6, -0.95),
      children: [
        Image.asset(
          'assets/images/equipamentos.png',
          width: 185,
          fit: BoxFit.fill,
        ),
        const Text(
          'Equipamentos',
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
