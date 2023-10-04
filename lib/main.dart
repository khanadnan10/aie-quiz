import 'package:flutter/material.dart';
import 'package:quiz/features/bottomNavBar/page/bottomNavBar.dart';
import 'package:quiz/features/chooseTopic/pages/choose_topic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      home: ChooseTopic(),
    );
  }
}
