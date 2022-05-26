import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 53),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )
                ],
              ),
              // ProfileBox
              Container(
                height: height * 0.4,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double innerHeight = constraints.maxHeight;
                    double innerWidth = constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: innerHeight * 0.72,
                            width: innerWidth,
                            // Profile box
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Palette.backgroundDarkColor,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 80,
                                ),
                                // Name
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    color: Color.fromRGBO(39, 105, 171, 1),
                                    fontSize: 30,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                // Datas
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    // 1st Data
                                    Column(
                                      children: [
                                        // 1st Data Name
                                        Text(
                                          'Orders',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 25,
                                          ),
                                        ),
                                        // 1st Data Price
                                        Text(
                                          '10',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                39, 105, 171, 1),
                                            fontSize: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      // line padding alignment
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 25,
                                        vertical: 8,
                                      ),
                                      // line alignment
                                      child: Container(
                                        height: 50,
                                        width: 3,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(100),
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    // 2nd Data
                                    Column(
                                      children: [
                                        // 2nd Data Name
                                        Text(
                                          'Pending',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 25,
                                          ),
                                        ),
                                        // 2nd Data Price
                                        Text(
                                          '1',
                                          style: TextStyle(
                                            color: Color.fromRGBO(
                                                39, 105, 171, 1),
                                            fontSize: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        // profiles(1)
                        // Positioned(
                        //   top: 110,
                        //   right: innerWidth/2,
                        //   child: Icon(
                        //     Icons.account_circle
                        //   ),
                        // ),
                        // Profiles(2)
                        Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: AssetImage('assets/profileExample.jpeg'),
                                radius: 60.0,
                                backgroundColor: Colors.deepPurple[300],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
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

      backgroundColor: Palette.blockColor,
    );
  }
}
