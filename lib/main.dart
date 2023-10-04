import 'package:flutter/material.dart';
import 'package:quiz/features/bottomNavBar/page/bottomNavBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      home: BottomBar(),
    );
  }
}
