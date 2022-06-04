import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:toggle_bar/toggle_bar.dart';

class ProgramToggleBar extends StatefulWidget {
  const ProgramToggleBar({Key? key}) : super(key: key);

  @override
  State<ProgramToggleBar> createState() => _ProgramToggleBarState();
}

class _ProgramToggleBarState extends State<ProgramToggleBar> {

  List<String> labels = ['나의 운동','스타터', '러너', '챌린저'];
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ToggleBar(
          labels: labels,
          textColor: Colors.black26,
          selectedTextColor: Colors.white,
          backgroundColor: Palette.blockColor,
          selectedTabColor: Palette.iconColor,
          labelTextStyle: TextStyle(fontWeight: FontWeight.bold),
          onSelectionUpdated: (index){
            setState(() {
              countNum = index;
            });
          },
        ),
        SizedBox(height: 200),
      ],
    );
  }
}

