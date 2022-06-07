import 'package:flutter/material.dart';
import 'package:runiverse/components/main_logo.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/components/main_logo.dart';
import 'package:runiverse/components/icon_btn_with_counter.dart';
import 'package:runiverse/running/chat.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

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
                SizedBox(width: 8),
                IconBtnWithCounter(),
              ],
            ),
            Chat(),
            Chat(),
            Chat(),
            Chat(),
          ],
        ),
      )
    );
  }
}
