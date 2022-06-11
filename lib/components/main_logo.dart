import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';

class MainLogoBtn extends StatelessWidget {
  const MainLogoBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 12),
      height: 70,
      width: width * 0.75,
      child: Row(
        children: [
          FlatButton(
              onPressed: () {},
              child: Image.asset('assets/AppIcons/playstore.png'),
          ),
          Text(
            "Runiverse",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Palette.iconColor,
                fontFamily: MyFontFamily.Bebas
            ),
          )
        ],
      )
    );
  }
}

