import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          const Text(
            'Ficha de Aventura',
            style: TextStyle(fontFamily: 'Ringbearer', fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: const Alignment(-0.2, -0.8),
                children: [
                  Image.asset(
                    'assets/images/habilidade.png',
                    height: 160,
                    fit: BoxFit.fill,
                  ),
                  const Text(
                    'Habilidade',
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
                  const Positioned(
                    top: 30,
                    left: 70,
                    child: Text(
                      '10',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF14832C)),
                    ),
                  ),
                  const Positioned(
                    top: 55,
                    left: 32,
                    child: Text(
                      '10',
                      style: TextStyle(
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
              ),
              Stack(
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
                  const Positioned(
                    top: 30,
                    left: 70,
                    child: Text(
                      '18',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF14832C)),
                    ),
                  ),
                  const Positioned(
                    top: 55,
                    left: 32,
                    child: Text(
                      '18',
                      style: TextStyle(
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
              ),
              Stack(
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
                  const Positioned(
                    top: 30,
                    left: 70,
                    child: Text(
                      '11',
                      style: TextStyle(
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
                      child: const Text(
                        '11',
                        style: TextStyle(
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
              ),
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
              height: 30,
            ),
            label: 'Inicial',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/swords.png',
              height: 30,
            ),
            label: 'Batalhar',
            backgroundColor: const Color(0xFF14832C),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/dice.png',
              height: 30,
            ),
            label: 'Jogar dados',
            backgroundColor: const Color(0xFF14832C),
          ),
        ],
      ),
    );
  }
}
