import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class IconBtnWithCounter extends StatefulWidget {
  const IconBtnWithCounter({
    Key? key,
  }) : super(key: key);

  @override
  State<IconBtnWithCounter> createState() => _IconBtnWithCounterState();
}

class _IconBtnWithCounterState extends State<IconBtnWithCounter> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 6,right: 5,top: 5,bottom: 5),
            height: 50,
            width: width * 0.13,
            decoration: BoxDecoration(
                color: Palette.iconColor,
                borderRadius: BorderRadius.circular(15)
            ),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                color: Palette.iconColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Text("3",
                  style: TextStyle(
                      fontSize: 12,
                      height: 1,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
