import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Marathon extends StatefulWidget {
  const Marathon({Key? key}) : super(key: key);

  @override
  State<Marathon> createState() => _MarathonState();
}

class _MarathonState extends State<Marathon> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,

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
              padding: EdgeInsets.only(top: 90, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Marathon Challenge",
                      style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Let\'s enjoy external programs!',
                    style: TextStyle(
                      letterSpacing: 1.0,
                      color: Colors.white60,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
              top: height * 0.25,
              child: Container(
                padding: EdgeInsets.only(left: width*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        child: Text("Time Running",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        onPressed: (){},
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(Size(width*0.8,100)),
                            backgroundColor: MaterialStateProperty.all<Color>(Palette.blockColor),
                            elevation: MaterialStateProperty.all(70),
                            padding: MaterialStateProperty.all(EdgeInsets.all(30))
                        ),
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
