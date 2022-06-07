import 'package:flutter/material.dart';
import 'package:runiverse/components/main_logo.dart';
import 'package:runiverse/config/palette.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Palette.backgroundDarkColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(height: height * 0.01),
                  MainLogoBtn(),
                ],
              ),
            ],
          ),
        )
    );
  }
}