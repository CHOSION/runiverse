import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/config/font.dart';

class ProgramLiked extends StatefulWidget {
  const ProgramLiked({Key? key}) : super(key: key);

  @override
  State<ProgramLiked> createState() => _ProgramLikedState();
}

class _ProgramLikedState extends State<ProgramLiked> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context) {
                return ProgramIntro();
              }));
        },
        leading: Icon(
          Icons.star,
          size: 32,
          color: Colors.white,
        ),
        title: Text(
          '(Program Name)',
          style: TextStyle(
            fontFamily: MyFontFamily.Bebas,
            fontWeight: FontWeight.bold,
            color: Palette.iconColor,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
        ),
        tileColor: Palette.blockColor,
      ),
    );
  }
}
