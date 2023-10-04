import 'package:flutter/material.dart';
import 'package:quiz/features/category/pages/category.dart';
import 'package:quiz/utils/color.dart';

import '../../waitingforuser/page/waiting_for_friends.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = const Category();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.kPrimaryColor,
        child: const Image(
          image: AssetImage(
            'assets/images/icons8-category-96.png',
          ),
          height: 24,
          width: 24,
        ),
      ),
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        child: SizedBox(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // For new screen copy from here -----------------------
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    // For every new screen pass another listener
                    currentScreen = const Category();
                    currentTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons
                          .home_outlined, // For every new screen change the Icon
                      color:
                          currentTab == 0 ? AppColor.kblackColor : Colors.grey,
                    ),
                    // const Text('DashBoard'),
                  ],
                ),
              ),
              // For new screen copy to here -----------------------

              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    currentScreen = const WaitingForFriends();
                    currentTab = 1;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.leaderboard_outlined,
                      color:
                          currentTab == 1 ? AppColor.kblackColor : Colors.grey,
                    ),
                    // const Text('Waiting'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
