import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:runiverse/config/palette.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isYourPrograms = true;

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
                    height: 40,
                  ),

                  // 3. Stats
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StatsItem(value: "18:41:55", label: "hr"),
                      StatsItem(value: "168.24", label: "km"),
                      StatsItem(value: "6\'40", label: "pace"),
                      StatsItem(value: "13,540", label: "kcal"),
                    ],
                  ),

                  SizedBox(
                    height: 40,
                  ),

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
                            margin: EdgeInsets.only(top: 25),
                            child: ElevatedButton(
                              child: Text("Time Running",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                                  backgroundColor: MaterialStateProperty.all<Color>(Palette.backgroundDarkColor),
                                  elevation: MaterialStateProperty.all(70),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(30))
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              child: Text("Distance Running",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                                  backgroundColor: MaterialStateProperty.all<Color>(Palette.backgroundDarkColor),
                                  elevation: MaterialStateProperty.all(70),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(30))
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              child: Text("Interval Running",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                                  backgroundColor: MaterialStateProperty.all<Color>(Palette.backgroundDarkColor),
                                  elevation: MaterialStateProperty.all(70),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(30))
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              child: Text("30min Walking",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                                  backgroundColor: MaterialStateProperty.all<Color>(Palette.backgroundDarkColor),
                                  elevation: MaterialStateProperty.all(70),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(30))
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ElevatedButton(
                              child: Text("Marathon Challenge",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              onPressed: (){},
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                                  backgroundColor: MaterialStateProperty.all<Color>(Palette.backgroundDarkColor),
                                  elevation: MaterialStateProperty.all(70),
                                  padding: MaterialStateProperty.all(EdgeInsets.all(30))
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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

class StatsItem extends StatelessWidget {
  final String value;
  final String label;

  const StatsItem({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white
          ),
        ),
        Text(
          label,
          style: TextStyle(
              fontSize: 14,
              color: Palette.listColor
          ),
        ),
      ],
    );
  }
}
