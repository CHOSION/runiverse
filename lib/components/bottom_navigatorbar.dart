import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/home/example.dart';
import 'package:runiverse/running/profile.dart';
import 'package:runiverse/running/message.dart';
import 'package:runiverse/running/program_intro.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 24,
      backgroundColor: Palette.backgroundDarkColor,
      selectedIconTheme: IconThemeData(color: Palette.iconColor),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      onTap: (index) => setState(()=>_currentIndex=index),
      items: [
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Icon(Icons.home_filled),
            ),
            label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Icon(Icons.bar_chart),
            ),
            label: 'Stat'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Icon(Icons.mode_comment),
            ),
            label: 'Comment'),
        BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Icon(Icons.menu),
            ),
            label: 'Menu'),
      ]
    );
  }
}
