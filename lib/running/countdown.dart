import 'dart:async';
import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {

  static const duration = const Duration(seconds: 1);

  int secondsPassed = 0;
  bool isActive = false;

  Timer? timer;

  void handleTick() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }

    int seconds = secondsPassed % 60;
    int minutes = secondsPassed ~/ 60;
    int hours = secondsPassed ~/ (60 * 60);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LabelText(
                label: 'HRS',
                value: hours.toString().padLeft(2, '0')),
            LabelText(
                label: 'MIN',
                value: minutes.toString().padLeft(2, '0')),
            LabelText(
                label: 'SEC',
                value: seconds.toString().padLeft(2, '0')),
          ],
        ),
        SizedBox(height: 60),
        Container(
          width: 200,
          height: 47,
          margin: EdgeInsets.only(top: 30),
          child: RaisedButton(
            color: Colors.pink[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
            child: Text(isActive ? 'STOP' : 'START'),
            onPressed: () {
              setState(() {
                isActive = !isActive;
              });
            },
          ),
        )
      ],
    );
  }
}

class LabelText extends StatelessWidget {

  LabelText({required this.label,required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Palette.iconColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              fontFamily: MyFontFamily.Bebas,
            ),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
              fontFamily: MyFontFamily.Bebas,
            ),
          ),
        ],
      ),
    );
  }
}
