import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,

      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          iconSize: 40,

          selectedIconTheme: IconThemeData(
              color: Palette.iconColor
          ),
          unselectedIconTheme: IconThemeData(
              color: Colors.black12
          ),
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/runiverse_logo.png'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mode_comment),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),

      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height*0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: const Radius.circular(40),
              ),
              child: Container(
                color: Palette.iconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
