import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class UnderBar extends StatefulWidget {
  const UnderBar({Key? key}) : super(key: key);

  @override
  State<UnderBar> createState() => _UnderBarState();
}

class _UnderBarState extends State<UnderBar> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        Center(
          child: Text("apple"),
        ),
        Center(
          child: Text("google"),
        ),
        Center(
          child: Text("runiverse"),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Image.asset("apple_logo.png"),
      Image.asset("google_logo.png"),
      Image.asset("runiverse_logo.png"),
    ];
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
            top: BorderSide(width: 1, color: Colors.black.withOpacity(0.06))
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              return InkWell(
                  onTap: () {
                    setState(() {
                      pageIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(items[index], size: 28, color: Palette.iconColor),
                      SizedBox(height: 5,),
                      pageIndex == index ? Container(
                        width: 6,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Palette.textDarkColor,
                          shape: BoxShape.circle
                        ),
                      ) : Container()
                    ],
                  ),
              );
            }),
        ),
      ),
    );
  }
}
