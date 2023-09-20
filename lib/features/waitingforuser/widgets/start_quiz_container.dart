import 'package:flutter/material.dart';

import '../../../utils/color.dart';

class StartQuizContainer extends StatelessWidget {
  const StartQuizContainer({
    super.key,
    required this.userImagePath,
  });

  final List<String> userImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      padding: const EdgeInsets.all(10.0).copyWith(bottom: 20, top: 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24.0),
          bottomRight: Radius.circular(24.0),
        ),
        color: AppColor.kSecondaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: userImagePath.length,
            itemBuilder: (context, index) {
              return Image(
                image: AssetImage(userImagePath[index]),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              //TODO: Add functinalities to start quiz
              debugPrint('Start quiz tapped');
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100.0),
              ),
              backgroundColor: AppColor.kPrimaryColor,
            ),
            child: const Text('Start quiz'),
          ),
        ],
      ),
    );
  }
}
