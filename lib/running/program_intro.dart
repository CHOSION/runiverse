import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

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

      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "https://images.pexels.com/photos/4348633/pexels-photo-4348633.jpeg?cs=srgb&dl=pexels-maksim-goncharenok-4348633.jpg&fm=jpg",
                height: height * 0.7,
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
              Text("30min Running",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 32.0,
                  color: Palette.iconColor,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 32),
              Text("Let\'s enjoy running\nfor 30 minutes",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                ),
              ),
              SizedBox(height: 28),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return ProgramIntro();
                      })
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Palette.iconColor,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 105,vertical: 12),
                ),
                child: Text(
                  "Start",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
