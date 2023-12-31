import 'package:flutter/material.dart';
import 'package:gamebooks_adventure_sheets/util/new_books.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF14832C),
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: 'Ringbearer',
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: newBooks.length,
          itemBuilder: (BuildContext context, int index) {
            String title = newBooks[index]['title'] as String;
            Widget page = newBooks[index]['page'] as Widget;

            return ListTile(
              title: Text(
                title,
                style: const TextStyle(fontFamily: 'Ringbearer'),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => page,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
