import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';
import 'package:runiverse/components/icon_btn_with_counter.dart';

class RunningCertificate extends StatefulWidget {
  const RunningCertificate({Key? key}) : super(key: key);

  @override
  State<RunningCertificate> createState() => _RunningCertificateState();
}

class _RunningCertificateState extends State<RunningCertificate> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Palette.backgroundDarkColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                  height: 70,
                  width: width * 0.75,
                  child: Row(
                    children: [
                      Icon(
                          Icons.run_circle_outlined,
                          color: Palette.iconColor,
                        size: 36,
                      ),
                      SizedBox(width: width*0.02),
                      Text(
                        "Program Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Palette.iconColor,
                            fontFamily: MyFontFamily.Bebas
                        ),
                      ),
                      SizedBox(width: width*0.19),
                      InkWell(
                        onTap: (){},
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top:1),
                              height: 39,
                              width: width * 0.1,
                              decoration: BoxDecoration(
                                  color: Palette.iconColor,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                            ),
                            Positioned(
                              top: 2,
                              right: 2,
                              child: Container(
                                height: 18,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Palette.iconColor,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(
                                  child: Text("3",
                                    style: TextStyle(
                                        fontSize: 10,
                                        height: 1,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
              ),
            ]
        ),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
