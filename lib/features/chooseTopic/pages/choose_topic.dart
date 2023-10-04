// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz/features/chooseTopic/widgets/choose_topic_subject_card.dart';

import 'package:quiz/utils/color.dart';
import 'package:quiz/utils/utils.dart';

class ChooseTopic extends StatelessWidget {
  const ChooseTopic({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> topic = [
      {
        'image': 'assets/images/Exclude.png',
        'subjectName': 'Physics',
      },
      {
        'image': 'assets/images/bloom-19 1.png',
        'subjectName': 'Chemistry',
      },
      {
        'image':
            'assets/images/sammy-woman-shaking-hands-with-new-employee 1.png',
        'subjectName': 'Biology'
      },
      {
        'image': 'assets/images/sammy-7 1.png',
        'subjectName': 'Topic name',
      },
    ];
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
              'assets/images/topicbgimage.png',
              fit: BoxFit.cover,
              width: screenSize.width,
            ),
            Container(
              width: screenSize.width,
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
                    'Science',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Utils(height: 2).bodySizedBox,
                  const Text(
                    'select the particular topic',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: topic.length,
                      itemBuilder: (context, index) {
                        return ChooseTopicSubjectCard(
                          image: topic[index]['image'],
                          subjectName: topic[index]['subjectName'],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
