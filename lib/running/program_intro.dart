import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';
import 'package:runiverse/running/example.dart';
import 'package:runiverse/running/running.dart';
import 'package:runiverse/running/running_ver2.dart';
import 'package:runiverse/running/pedometer.dart';
import 'package:runiverse/running/running_certificate.dart';

class ProgramIntro extends StatefulWidget {
  const ProgramIntro({Key? key}) : super(key: key);

  @override
  State<ProgramIntro> createState() => _ProgramIntroState();
}

class _ProgramIntroState extends State<ProgramIntro> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/4348633/pexels-photo-4348633.jpeg?cs=srgb&dl=pexels-maksim-goncharenok-4348633.jpg&fm=jpg",
                height: height * 0.65,
                width: width,
                fit: BoxFit.cover,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),

              Positioned(
                bottom: 0.0,
                child: Container(
                  height: 36.0,
                  width: width,
                  decoration: BoxDecoration(
                      color: Palette.backgroundDarkColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text("500m Running",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  color: Palette.iconColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: MyFontFamily.Bebas
                ),
              ),
              SizedBox(height: 24),
              Text("Let\'s enjoy running.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                ),
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Running();
                      })
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Palette.iconColor,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 96,vertical: 12),
                ),
                child: Text(
                  "Start Running",
                  style: TextStyle(fontSize: 17,
                      fontFamily: MyFontFamily.Bebas),
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Pedometer();
                      })
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Palette.iconColor,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 91,vertical: 12),
                ),
                child: Text(
                  "Check Messages",
                  style: TextStyle(fontSize: 17,
                      fontFamily: MyFontFamily.Bebas),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
