import 'package:flutter/material.dart';
import 'package:quiz/features/category/pages/category.dart';
import 'package:quiz/features/chooseTopic/pages/choose_topic.dart';
import 'package:quiz/features/waitingforuser/page/waiting_for_friends.dart';
import 'package:quiz/utils/color.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  //Add more screens here
  static const List<Widget> _screens = <Widget>[
    Category(),
    ChooseTopic(),
    Center(child: Text('Leaderboard Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black54,
        selectedFontSize: 8,
        showSelectedLabels: true,
        backgroundColor: AppColor.kWhiteColor,
        selectedItemColor: AppColor.kWhiteColor,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: AppColor.kPrimaryColor,
                    ),
                    child: Icon(
                      Icons.home_outlined,
                      color: AppColor.kWhiteColor,
                    ),
                  )
                : const Icon(
                    Icons.home_outlined,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: AppColor.kPrimaryColor,
                    ),
                    child: const Image(
                      image: AssetImage(
                        'assets/images/icons8-category-96.png',
                      ),
                      height: 24,
                      width: 24,
                    ),
                  )
                : const Image(
                    image: AssetImage(
                      'assets/images/icons8-category-96.png',
                    ),
                    height: 24,
                    width: 24,
                    color: Colors.black54,
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: AppColor.kPrimaryColor,
                    ),
                    child: Icon(
                      Icons.leaderboard_outlined,
                      color: AppColor.kWhiteColor,
                    ),
                  )
                : const Icon(
                    Icons.leaderboard_outlined,
                  ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
