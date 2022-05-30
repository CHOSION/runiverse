import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

      body: CustomScrollView(
        slivers: [
          // Appbar
          SliverAppBar(
            backgroundColor: Palette.blockColor,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Palette.blockColor,
            ),
          ),

          // Profile Area
          SliverToBoxAdapter(
            child: Container(
              child: Column(
                children: [
                  // 1. Profile Image
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/profileExample.jpeg"),
                      )
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // 2. Username
                  Text(
                    "(id)",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Text("168.24"),
                          Text("Total Distance(km)")
                        ],
                      )
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  // 3. Stats
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Text(
                              "18:41:55",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text("hr")
                        ],

                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Palette.blockColor,
    );
  }
}

