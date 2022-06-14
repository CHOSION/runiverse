import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/config/font.dart';

class ProgramCard extends StatefulWidget {
  const ProgramCard({Key? key}) : super(key: key);

  @override
  State<ProgramCard> createState() => _ProgramCardState();
}

class _ProgramCardState extends State<ProgramCard> {
  bool isLiked = false;
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
          Icons.run_circle_outlined,
          size: 40,
          color: Colors.white,
        ),
        title: Text(
          '500m Running',
          style: TextStyle(
              fontFamily: MyFontFamily.Bebas,
              color: Palette.iconColor,
              fontSize: 21
          ),
        ),
        // subtitle: Text(
        //   '22 May 2022',
        //   style: TextStyle(color: Colors.grey),
        // ),
        trailing: IconButton(
          icon: isLiked
              ? Icon(Icons.star, color: Palette.iconColor)
              : Icon(Icons.star_border, color: Palette.iconColor),
          onPressed: () {
            setState(() {
              isLiked = !isLiked;
            });
          },
        ),
        tileColor: Palette.blockColor,
      ),
    );
  }
}
