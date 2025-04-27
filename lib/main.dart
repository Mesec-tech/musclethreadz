import 'package:flutter/material.dart';
import 'package:musclethreadz/pages/homepage.dart';
import 'package:musclethreadz/pages/info.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: InfoPage(),
      routes: {
        '/info': (context) => const InfoPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
