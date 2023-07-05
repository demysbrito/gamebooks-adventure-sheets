import 'package:flutter/material.dart';
import 'package:gamebooks_adventure_sheets/pages/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF14832C),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Fighting Fantasy Books'),
      // home: const TheWarlockOfFiretopMountain(),
    );
  }
}
