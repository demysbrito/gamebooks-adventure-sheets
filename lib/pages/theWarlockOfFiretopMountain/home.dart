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
                      '9',
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
                      '12',
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
                        '6',
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
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
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
              ),
              Stack(
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
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
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
              ),
              Column(
                children: [
                  Stack(
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
                  ),
                  const SizedBox(height: 5),
                  Stack(
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
                  ),
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
