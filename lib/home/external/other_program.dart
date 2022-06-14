import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:runiverse/components/main_logo.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/color_filters.dart';
import 'package:runiverse/config/font.dart';

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
                        color: Colors.white,
                      fontFamily: MyFontFamily.Bebas
                    ),
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
                            "https://anysports.net/infoservice/imgview.php?no=8345"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://trail-korea.com/");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8610"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://rh-marathon.com/");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/img/defaultImg/defaultLogo.jpg"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://www.adians.net/adi_news/?q=YToxOntzOjEyOiJrZXl3b3JkX3R5cGUiO3M6MzoiYWxsIjt9&bmode=view&idx=11379836&t=board");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8633"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("http://amarunsb.com/index.asp");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8519"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("http://www.dcrace.com/index");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8692"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("http://redangelrun.com/");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8695"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://urbansports.imweb.me/shop_view/?idx=4");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8504"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("http://www.newspenguin.com/event/DotFiveRun.html");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8559"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://ticket.wemakeprice.com/product/3000006986");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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
                            "https://anysports.net/infoservice/imgview.php?no=8604"),
                        height: height * 0.17,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            launch("https://smartstore.naver.com/runcop/products/6657075323");
                          },
                        ),
                        fit: BoxFit.cover),
                    Text(
                      '',
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