import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import '../components/search_field.dart';
import 'package:runiverse/components/icon_btn_with_counter.dart';

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

    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: height*0.01),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SearchField(),
                        SizedBox(width: 10),
                        IconBtnWithCounter(),
                      ],
                    ),
                    SizedBox(height: height*0.03),
                    Container(
                      margin:EdgeInsets.symmetric(horizontal:4.0),
                      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 24.0),
                      width: width,
                      height: height*0.15,
                      decoration: BoxDecoration(
                        color: Palette.blockColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text.rich(
                          TextSpan(
                              text: "Welcome to Runiverse\n\n",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white
                              ),
                              children: [
                                TextSpan(
                                  text: "(id)",
                                  style: TextStyle(
                                      color: Palette.iconColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ]
                          )
                      ),
                    ),
                    SizedBox(height: height*0.03),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Running Programs",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          backgroundColor: Palette.backgroundDarkColor,
        )
    );
  }
}
