import 'package:flutter/material.dart';
import 'package:runiverse/config/color_filters.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/home/program_tabbar.dart';
import 'package:runiverse/home/example.dart';
import '../components/search_field.dart';
import 'package:runiverse/components/icon_btn_with_counter.dart';
import 'package:runiverse/running/profile.dart';
import 'package:runiverse/running/message.dart';
import 'package:runiverse/running/other_program.dart';

class ExampleTest extends StatefulWidget {
  const ExampleTest({Key? key}) : super(key: key);

  @override
  State<ExampleTest> createState() => _ExampleTestState();
}

class _ExampleTestState extends State<ExampleTest> {
  int _currentIndex = 0;
  final screens = [
    Example(),
    Profile(),
    Messages(),
    Others()
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: screens[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
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
          ),
          backgroundColor: Palette.backgroundDarkColor,
        ));
  }
}
