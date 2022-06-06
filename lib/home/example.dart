import 'package:flutter/material.dart';
import 'package:runiverse/config/color_filters.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/home/program_tabbar.dart';
import '../components/search_field.dart';
import 'package:runiverse/components/icon_btn_with_counter.dart';
import 'package:runiverse/running/profile.dart';
import 'package:runiverse/running/message.dart';
import 'package:runiverse/running/program_intro.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _currentIndex = 0;
  final screens = [
    Example(),
    Profile(),
    Messages(),
    ProgramIntro()
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
            child: Column(
              children: [
                SizedBox(height: height * 0.01),
                Column(
                  children: [
                    Row(
                  children: [
                    SearchField(),
                    SizedBox(width: 10),
                    IconBtnWithCounter(),
                  ],
                ),
                    SizedBox(height: height * 0.03),
                    Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
                  width: width,
                  height: height * 0.15,
                  decoration: BoxDecoration(
                    color: Palette.blockColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text.rich(TextSpan(
                      text: "Welcome to Runiverse\n\n",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                      children: [
                        TextSpan(
                          text: "(id)",
                          style: TextStyle(
                              color: Palette.iconColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        )
                      ])),
                ),
                    SizedBox(height: height * 0.03),
                    Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Running themes",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                    SizedBox(height: height * 0.03),
                    SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?cs=srgb&dl=pexels-pixabay-40751.jpg&fm=jpg"),
                                colorFilter: ColorFilters.greyscale,
                                height: height * 0.12,
                                width: width * 0.5,
                                child: InkWell(
                                  onTap: () {},
                                ),
                                fit: BoxFit.cover),
                            Text(
                              'Interval Running',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Ink.image(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/1466852/pexels-photo-1466852.jpeg?cs=srgb&dl=pexels-yogendra-singh-1466852.jpg&fm=jpg"),
                                colorFilter: ColorFilters.greyscale,
                                height: height * 0.12,
                                width: width * 0.5,
                                child: InkWell(
                                  onTap: () {},
                                ),
                                fit: BoxFit.cover),
                            Text(
                              '10000 walks',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                    SizedBox(height: height * 0.03),
                    Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Running Programs",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
                    SizedBox(height: height * 0.03),
                    ProgramsTab()
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Palette.backgroundDarkColor,
    ));
  }
}
