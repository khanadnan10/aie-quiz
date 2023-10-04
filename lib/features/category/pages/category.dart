// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quiz/features/category/widgets/explore_card.dart';

import 'package:quiz/features/category/widgets/search_text_field.dart';
import 'package:quiz/features/category/widgets/section_heading.dart';
import 'package:quiz/utils/color.dart';
import 'package:quiz/utils/utils.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 50),
        child: AppBar(
          toolbarHeight: kToolbarHeight + 50,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColor.kPrimaryColor,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Category',
            style: TextStyle(
              fontSize: 16.0,
              color: AppColor.kblackColor,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  //TODO: Navigate to profile page
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Ellipse2.png'),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(
              hintText: 'Search',
              fillColor: AppColor.kblackColor.withOpacity(0.1),
              borderColor: Colors.transparent,
              activeSuffixIcon: false,
              prefixIconColor: const Color(0xff707070),
              onChanged: (value) {},
            ),
            Utils().bodySizedBox,
            const SectionHeading(
              text: 'Explore subject',
              fontWeight: FontWeight.w500,
            ),
            Utils().bodySizedBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 120,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                        ),
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return const ExploreCard(
                            text: 'Science',
                            image:
                                'https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
