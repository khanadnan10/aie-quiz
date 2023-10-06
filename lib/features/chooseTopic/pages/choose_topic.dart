// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:quiz/features/chooseTopic/data/topic.dart';
import 'package:quiz/features/chooseTopic/widgets/choose_topic_subject_card.dart';
import 'package:quiz/utils/color.dart';
import 'package:quiz/utils/utils.dart';

class ChooseTopic extends StatefulWidget {
  const ChooseTopic({super.key});

  @override
  _ChooseTopicState createState() => _ChooseTopicState();
}

class _ChooseTopicState extends State<ChooseTopic> {
  int selectedTopicIndex = -1; // Initialize to no topic selected
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
                  selectedTopicIndex != -1
                      ? AnimatedContainer(
                          duration: const Duration(milliseconds: 1500),
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
                                          color: Color.fromARGB(
                                              132, 244, 244, 251),
                                          spreadRadius: 10,
                                          blurRadius: 10,
                                          offset: Offset(0, 0),
                                        ),
                                      ],
                                    ),
                                    child: Image(
                                      height: 60,
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          topic[selectedTopicIndex]['image']),
                                    ),
                                  ),
                                  Utils(width: 10, height: 0).bodySizedBox,
                                  Text(
                                      topic[selectedTopicIndex]['subjectName']),
                                ],
                              ),
                              Expanded(
                                child: GridView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  padding: const EdgeInsets.all(0),
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                  ),
                                  itemCount: topic[selectedTopicIndex]
                                          ['subItems']
                                      .length,
                                  itemBuilder: (context, index) {
                                    final subItem = topic[selectedTopicIndex]
                                        ['subItems'][index];
                                    return ChooseTopicSubjectCard(
                                      image: subItem['subimage'],
                                      subjectName: subItem['subjectName'],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                  SizedBox(
                    height: screenSize.height,
                    child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(0).copyWith(top: 10),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemCount: topic.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              // Toggle selection
                              if (selectedTopicIndex == index) {
                                selectedTopicIndex = -1; // Deselect the topic
                              } else {
                                selectedTopicIndex = index; // Select the topic
                              }
                            });
                          },
                          child: ChooseTopicSubjectCard(
                            image: topic[index]['image'],
                            subjectName: topic[index]['subjectName'],
                          ),
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
