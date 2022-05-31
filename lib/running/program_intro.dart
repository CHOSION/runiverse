import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class ProgramIntro extends StatelessWidget {
  const ProgramIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,

      body: Column(
        children: [
          Row(
            children: [
              Expanded(child: Column(),),
              Container(
                height: height*0.8,
                width: width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 60,
                      color: Colors.black54
                    )
                  ],
                  image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/programIntro.jpeg"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
