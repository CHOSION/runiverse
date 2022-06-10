import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Palette.backgroundDarkColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Palette.iconColor)),
              child: Center(
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/2773977/pexels-photo-2773977.jpeg?cs=srgb&dl=pexels-rio-kuncoro-2773977.jpg&fm=jpg"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(width: width*0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '(id)',
                  style: TextStyle(
                    color: Palette.iconColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '(date)',
                  style: TextStyle(
                    color: Palette.blockColor,
                    fontSize: 12
                  ),
                )
              ],
            )
          ],
        ),
        actions: [
          FlatButton(
              onPressed: () {},
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 0,right: 3,top: 1,bottom: 3),
                    height: 40,
                    width: width * 0.1,
                    decoration: BoxDecoration(
                        color: Palette.iconColor,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                  ),
                  Positioned(
                    top: 1,
                    right: 1,
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
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.1)
                  ),
                  child: Image.asset(
                    'assets/runiverse_logo.png',
                    width: 60,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 30),),
                Text(
                  '547',
                  style: TextStyle(
                    color: Palette.iconColor,
                    fontSize: 80,
                    fontFamily: MyFontFamily.Bebas,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '0 m',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                          Text(
                            '1000 m',
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.6,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.grey,
                        progressColor: Palette.iconColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30)
                      ),
                      // Text(
                      //   '547m taken'.toUpperCase(),
                      //   style: TextStyle(
                      //     color: Palette.iconColor,
                      //     fontFamily: MyFontFamily.Bebas,
                      //     fontSize: 24,
                      //     fontWeight: FontWeight.bold
                      //   ),
                      // ),
                      // Text(
                      //   'Ran 4 minutes today.',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 16,
                      //   ),
                      // )
                    ],
                  ),
                ),
                Divider(
                  height: 40,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STEPS',
                                style: TextStyle(
                                  color: Palette.iconColor,
                                  fontFamily: MyFontFamily.Bebas,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '1224',
                                        style: TextStyle(
                                          color: Palette.iconColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold
                                        )
                                      ),
                                      TextSpan(
                                          text: ' steps',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold
                                          )
                                      ),
                                    ]
                                  )
                              )
                            ],
                          )
                      ),
                      Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Calories',
                                style: TextStyle(
                                    color: Palette.iconColor,
                                    fontFamily: MyFontFamily.Bebas,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 21
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '243',
                                            style: TextStyle(
                                                color: Palette.iconColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        TextSpan(
                                            text: ' kcal',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                      ]
                                  )
                              )
                            ],
                          )
                      ),
                      Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Heart Rate',
                                style: TextStyle(
                                    color: Palette.iconColor,
                                    fontFamily: MyFontFamily.Bebas,
                                    fontWeight: FontWeight.bold,
                                  fontSize: 21
                                ),
                              ),
                              RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '104',
                                            style: TextStyle(
                                                color: Palette.iconColor,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                        TextSpan(
                                            text: ' bpm',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),
                                      ]
                                  )
                              )
                            ],
                          )
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 40,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
