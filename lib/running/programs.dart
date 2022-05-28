import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Programs extends StatefulWidget {
  const Programs({Key? key}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  bool isYourPrograms = true;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,

      // BottomNavigationBar
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
      body: Stack(
        children: [
          // Welcome Label Stack
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200,
              padding: EdgeInsets.only(top: 90, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Welcome",
                        style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 25,
                            color: Colors.white),
                        children: [
                          TextSpan(
                            text: " (id)",
                            style: TextStyle(
                                letterSpacing: 1.0,
                                fontSize: 25,
                                color: Colors.white,
                            fontWeight: FontWeight.bold
                            ),
                          )
                        ]
                    ),
                  ),
                  Text(
                    'Let\'s run with Runiverse!',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ), // Welcome Label Stack

          // Program Block Stack
          Positioned(
            top: height * 0.25,
            child: Container(
              padding: EdgeInsets.all(20.0),
              height: height,
              width: width-30,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Palette.blockColor,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15,
                    spreadRadius: 15,
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isYourPrograms = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'All',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: !isYourPrograms ? Palette.iconColor
                                    : Palette.backgroundLightColor,
                              ),
                            ),
                            if(!isYourPrograms)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 3,
                              width: width*0.12,
                              color: Palette.iconColor,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isYourPrograms = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Yours',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: isYourPrograms ? Palette.iconColor : Palette.backgroundLightColor,
                              ),
                            ),
                            if(isYourPrograms)
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              height: 3,
                              width: width*0.18,
                              color: Palette.iconColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  // Programs
                  Container(
                    
                  )
                ],
              ),
            ),
          ), // Program Block Stack
        ],
      ),
    );
  }
}
