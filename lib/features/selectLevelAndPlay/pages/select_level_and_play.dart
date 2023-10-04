import 'package:flutter/material.dart';
import 'package:quiz/features/selectLevelAndPlay/widgets/custom_chip.dart';
import 'package:quiz/utils/color.dart';
import 'package:quiz/utils/utils.dart';

class SelectLevelAndPlay extends StatelessWidget {
  const SelectLevelAndPlay({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColor.kTealColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
              ),
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.amber,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/3607741 1 (1).png',
              fit: BoxFit.cover,
              width: screenSize.width,
              height: screenSize.height * 0.6,
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: const BoxDecoration(
                color: Color(0xFFFDFDFD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16.0).copyWith(
                bottom: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Element',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Utils(height: 5).bodySizedBox,
                  const Text(
                    'Select level',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Utils().bodySizedBox,
                  //TODO: Select Level
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomChip(
                          onTap: () {},
                          text: 'Beginner',
                        ),
                      ),
                      Expanded(
                        child: CustomChip(
                          color: Colors.transparent,
                          onTap: () {},
                          fillColor: AppColor.kblackColor.withOpacity(0.1),
                          text: 'Intermediate',
                        ),
                      ),
                      Expanded(
                        child: CustomChip(
                          onTap: () {},
                          fillColor: AppColor.kblackColor.withOpacity(0.1),
                          color: Colors.transparent,
                          text: 'Advance',
                        ),
                      ),
                    ],
                  ),
                  Utils(height: 40).bodySizedBox,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.kPrimaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 8,
                      ),
                      child: Center(
                        child: Text(
                          'Play Solo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.kblackColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Utils().bodySizedBox,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColor.kblackColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 8,
                      ),
                      child: Center(
                        child: Text(
                          'Invite your friend',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.kblackColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Utils().bodySizedBox,
                  Center(
                    child: Text(
                      'Invite and play with your friends.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColor.kblackColor,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
