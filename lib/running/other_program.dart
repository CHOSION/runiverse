import 'dart:math';

import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/running.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Palette.backgroundDarkColor,
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0),
              child: Text(
                "Other\nMarathons",
                style: TextStyle(
                  letterSpacing: 1.3,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  height: 1.3
                ),
              ),
            ),
            Expanded(
                child: PageViewWidget(),
            )
          ],
        )
    );
  }
}

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {

  List<VacationBean> _list = VacationBean.generate();

  PageController? pageController;
  double viewportFraction = 0.8;
  double? pageOffset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0, viewportFraction: viewportFraction)
    ..addListener(() {
      setState(() {
        pageOffset = pageController!.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return PageView.builder(
      controller: pageController,
        itemBuilder: (context, index) {

          double scale = max(viewportFraction,
              (1 - (pageOffset! - index).abs()) + viewportFraction);

          double angle = (pageOffset! - index).abs();

          if (angle > 0.5) {
            angle = 1 - angle;
          }

          return Container(
            padding: EdgeInsets.only(
              right: 10,
              left: 20,
              top: 100 - scale * 25,
              bottom: 50,
            ),
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(
                  3,
                  2,
                  0.001,
                )
                ..rotateY(angle),
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Image.network(
                  _list[index].url,
                  width: width,
                  fit: BoxFit.none,
                    alignment: Alignment((pageOffset! - index).abs() * 0.5, 0)
              ),
              Positioned(
                bottom: 60,
                  left: 20,
                  child: AnimatedOpacity(
                    opacity: angle == 0 ? 1 : 0,
                    duration: Duration(
                      milliseconds: 200,
                    ),
                    child: Text(
                      _list[index].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
              )
              ]
              ),
            )
          );
        },

      itemCount: _list.length,
    );
  }
}

class VacationBean {
  String url;
  String name;

  VacationBean(this.url, this.name);

  static List<VacationBean> generate() {
    return [
      VacationBean("https://images.pexels.com/photos/39308/runners-silhouettes-athletes-fitness-39308.jpeg?cs=srgb&dl=pexels-pixabay-39308.jpg&fm=jpg", "Marathon_1"),
      VacationBean("https://images.pexels.com/photos/1578384/pexels-photo-1578384.jpeg?cs=srgb&dl=pexels-run-ffwpu-1578384.jpg&fm=jpg", "Marathon_2"),
      VacationBean("https://images.pexels.com/photos/2403045/pexels-photo-2403045.jpeg?cs=srgb&dl=pexels-run-ffwpu-2403045.jpg&fm=jpg", "Marathon_3"),
      VacationBean("https://images.pexels.com/photos/34514/spot-runs-start-la.jpg?cs=srgb&dl=pexels-pixabay-34514.jpg&fm=jpg", "Marathon_4"),
      VacationBean("https://images.pexels.com/photos/3760259/pexels-photo-3760259.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3760259.jpg&fm=jpg", "Marathon_5"),
    ];
  }
}