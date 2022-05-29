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
              top: height*0.05,
              child: Container(
                padding: EdgeInsets.all(20.0),
                height: height*0.24,
                width: width-40,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Palette.backgroundDarkColor,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 130.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/profileExample.jpeg'),
                      ),
                    ),
                    SizedBox(
                      height: height*0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        height: height*0.1,
                        width: width - 80,
                        margin:  EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Palette.blockColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
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

