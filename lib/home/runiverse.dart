import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/home/home.dart';
import 'package:runiverse/home/profile/profile.dart';
import 'package:runiverse/home/messages/message.dart';
import 'package:runiverse/home/external/other_program.dart';

class RuniverseMain extends StatefulWidget {
  const RuniverseMain({Key? key}) : super(key: key);

  @override
  State<RuniverseMain> createState() => _RuniverseMainState();
}

class _RuniverseMainState extends State<RuniverseMain> {

  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser(){
    try {
      final user = _authentication.currentUser;
      if(user != null) {
        loggedUser = user;
        print(loggedUser!.email);
      }
    } catch (e) {
      print(e);
    }
  }

  int _currentIndex = 0;

  final screens = [
    Home(),
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

