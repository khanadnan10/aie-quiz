import 'package:flutter/material.dart';
import 'package:quiz/features/chooseTopic/data/topic.dart';
import 'package:quiz/features/chooseTopic/widgets/choose_topic_subject_card.dart';
import 'package:quiz/utils/color.dart';
import 'package:quiz/utils/utils.dart';

class ChooseSubItems extends StatelessWidget {
  final String subjectImage;
  final String subjectTitle;
  final String subSubjectImage;
  final String subSubjectName;

  const ChooseSubItems({
    super.key,
    required this.subjectImage,
    required this.subjectTitle,
    required this.subSubjectImage,
    required this.subSubjectName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: AppColor.kWhiteColor,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(132, 244, 244, 251),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Image(
                  image: AssetImage(subjectImage),
                ),
              ),
              Utils(width: 10, height: 0).bodySizedBox,
              Text(subjectTitle),
            ],
          ),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: topic.length,
              itemBuilder: (context, index) {
                return ChooseTopicSubjectCard(
                  image: subSubjectImage,
                  subjectName: subSubjectName,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
