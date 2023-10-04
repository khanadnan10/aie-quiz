
import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/utils.dart';

class ChooseTopicSubjectCard extends StatelessWidget {
  final String image;
  final String subjectName;
  const ChooseTopicSubjectCard({
    Key? key,
    required this.image,
    required this.subjectName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
            image: AssetImage(image),
          ),
        ),
        Utils(height: 5).bodySizedBox,
        Text(
          subjectName,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
