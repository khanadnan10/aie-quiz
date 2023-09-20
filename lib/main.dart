import 'package:flutter/material.dart';
import 'package:quiz/features/waitingforuser/page/waiting_for_friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WaitingForFriends(),
    );
  }
}
