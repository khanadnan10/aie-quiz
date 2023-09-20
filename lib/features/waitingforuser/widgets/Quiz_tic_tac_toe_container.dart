import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class QuizTicTacToeContainer extends StatelessWidget {
  const QuizTicTacToeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(height: 10.0),
        const Text('You lose'),
        const SizedBox(height: 10.0),
        Stack(
          children: [
            const Image(
              image: AssetImage(
                'assets/images/tictactoe.png',
              ),
              colorBlendMode: BlendMode.colorBurn,
            ),
            Positioned(
              top: MediaQuery.of(context).size.width * 0.25,
              left: MediaQuery.of(context).size.width * 0.15,
              child: FloatingActionButton.extended(
                // isExtended: true,
                icon: Icon(
                  Icons.replay,
                  color: AppColor.kPrimaryColor,
                ),
                backgroundColor: AppColor.kWhiteColor,
                onPressed: () {
                  print('Play again');
                },
                label: Text(
                  'Play again',
                  style: TextStyle(
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
