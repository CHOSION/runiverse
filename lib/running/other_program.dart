import 'package:flutter/material.dart';
import 'package:runiverse/components/main_logo.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/color_filters.dart';

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
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    "Other Programs",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: height * 0.04),
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
                        height: height * 0.17,
                        width: width,
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
                            "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?cs=srgb&dl=pexels-pixabay-40751.jpg&fm=jpg"),
                        colorFilter: ColorFilters.greyscale,
                        height: height * 0.17,
                        width: width,
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
                            "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?cs=srgb&dl=pexels-pixabay-40751.jpg&fm=jpg"),
                        colorFilter: ColorFilters.greyscale,
                        height: height * 0.17,
                        width: width,
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
                            "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?cs=srgb&dl=pexels-pixabay-40751.jpg&fm=jpg"),
                        colorFilter: ColorFilters.greyscale,
                        height: height * 0.17,
                        width: width,
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
                            "https://images.pexels.com/photos/40751/running-runner-long-distance-fitness-40751.jpeg?cs=srgb&dl=pexels-pixabay-40751.jpg&fm=jpg"),
                        colorFilter: ColorFilters.greyscale,
                        height: height * 0.17,
                        width: width,
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
            ],
          ),
        )
    );
  }
}