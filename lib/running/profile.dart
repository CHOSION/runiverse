import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

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
              label: 'Home'),
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
        ],
      ),

      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 300,
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.0),
                      height: 260,
                      width: width-20,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Palette.backgroundDarkColor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Row(

                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
          )
        ],
      ),
      backgroundColor: Palette.blockColor,
    );
  }
}

