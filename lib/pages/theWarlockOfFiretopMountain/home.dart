import 'package:flutter/material.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/equipment_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/gold_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/jewels_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/luck_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/potions_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/provisions_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/skill_widget.dart';
import 'package:gamebooks_adventure_sheets/pages/theWarlockOfFiretopMountain/widgets/stamina_widget.dart';

class TheWarlock extends StatefulWidget {
  const TheWarlock({super.key});

  @override
  State<TheWarlock> createState() => _TheWarlockState();
}

class _TheWarlockState extends State<TheWarlock> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14832C),
        title: const Text(
          'O Feiticeiro da Montanha de Fogo',
          style: TextStyle(
            fontFamily: 'Ringbearer',
            color: Colors.white,
          ),
        ),
      ),
      body: const Column(
        children: [
          Text(
            'Ficha de Aventura',
            style: TextStyle(fontFamily: 'Ringbearer', fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TheWarlockSkillWidget(),
              TheWarlockStaminaWidget(),
              TheWarlockLuckWidget(),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TheWarlockGoldWidget(),
              TheWarlockProvisionsWidget(),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TheWarlockEquipmentWidget(),
              Column(
                children: [
                  TheWarlockJewelsWidget(),
                  SizedBox(height: 5),
                  TheWarlockPotionsWidget(),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/FFmain.png',
              height: 45,
            ),
            label: 'Inicial',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/color-swords.png',
              height: 45,
            ),
            label: 'Batalhar',
            backgroundColor: const Color(0xFF14832C),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/color-ancient-scroll.png',
              height: 45,
            ),
            label: 'Anotações',
            backgroundColor: const Color(0xFF14832C),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/color-dice2.png',
              height: 45,
            ),
            label: 'Jogar dados',
            backgroundColor: const Color(0xFF14832C),
          ),
        ],
      ),
    );
  }
}
