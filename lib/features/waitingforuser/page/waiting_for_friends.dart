import 'package:flutter/material.dart';
import 'package:quiz/features/waitingforuser/widgets/Quiz_tic_tac_toe_container.dart';
import 'package:quiz/features/waitingforuser/widgets/start_quiz_container.dart';
import 'package:quiz/utils/color.dart';

class WaitingForFriends extends StatelessWidget {
  const WaitingForFriends({super.key});

  @override
  Widget build(BuildContext context) {
    // for the section 'waiting for images'
    List<String> userImagePath = [
      'assets/images/Ellipse1.png',
      'assets/images/Ellipse2.png',
      'assets/images/Ellipse3.png',
      'assets/images/Ellipse4.png',
      'assets/images/Ellipse5.png',
      'assets/images/Ellipse6.png',
      'assets/images/Ellipse7.png',
      'assets/images/Ellipse8.png',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kSecondaryColor,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent,
        leading: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppColor.kWhiteColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 24,
              color: AppColor.kPrimaryColor,
              weight: 500,
            ),
          ),
        ),
        title: Text(
          'Waiting for users to join',
          style: TextStyle(
            color: AppColor.kblackColor,
            fontSize: 16.0,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            StartQuizContainer(userImagePath: userImagePath),
            const QuizTicTacToeContainer(),
          ],
        ),
      ),
    );
  }
}
