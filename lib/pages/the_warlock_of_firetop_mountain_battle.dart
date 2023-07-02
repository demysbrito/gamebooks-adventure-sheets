import 'package:flutter/material.dart';

class TheWarlockOfFiretopMountainBattle extends StatefulWidget {
  const TheWarlockOfFiretopMountainBattle({super.key});

  @override
  State<TheWarlockOfFiretopMountainBattle> createState() =>
      _TheWarlockOfFiretopMountainBattleState();
}

class _TheWarlockOfFiretopMountainBattleState
    extends State<TheWarlockOfFiretopMountainBattle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu App'),
      ),
      body: Container(
          // Conteúdo do corpo da página
          ),
      bottomNavigationBar: AppBar(
        toolbarHeight: 64, // Altura personalizada do bottomNavigationBar
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(64), // Altura do bottomNavigationBar
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, -3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    // Ação ao pressionar o ícone "home"
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Ação ao pressionar o ícone "search"
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    // Ação ao pressionar o ícone "person"
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
