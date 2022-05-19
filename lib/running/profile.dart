import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Palette.backgroundDarkColor,
                Palette.textDarkColor,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            )
          ),
        )
      ],
    );
  }
}
