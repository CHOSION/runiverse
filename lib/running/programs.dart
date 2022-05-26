import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Programs extends StatelessWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: height * 0.3,
            height: height * 1.5,
            left: 20,
            width: width-40,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: const Radius.circular(40),
              ),
              child: Container(
                color: Palette.blockColor,
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        backgroundColor: Palette.backgroundDarkColor,
        selectedIconTheme: IconThemeData(color: Palette.iconColor),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Icon(Icons.home_filled),
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Icon(Icons.bar_chart),
              ),
              label: 'Stat'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Icon(Icons.mode_comment),
              ),
              label: 'Comment'
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Icon(Icons.menu),
              ),
              label: 'Menu'
          ),
        ],
      ),

      backgroundColor: Palette.backgroundDarkColor,
    );
  }
}
