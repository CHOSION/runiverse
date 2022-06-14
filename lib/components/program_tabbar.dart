import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/start/login.dart';
import 'package:runiverse/config/font.dart';
import 'package:runiverse/components/program_card.dart';

class ProgramsTab extends StatefulWidget {
  const ProgramsTab({Key? key}) : super(key: key);

  @override
  State<ProgramsTab> createState() => _ProgramsTabState();
}

class _ProgramsTabState extends State<ProgramsTab> {

  bool isProgram = true;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isProgram = true;
                      });
                    },
                    icon: Icon(
                      Icons.run_circle,
                      size: 30,
                      color: isProgram ? Palette.iconColor : Colors.black54,
                    )),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isProgram = false;
                      });
                    },
                    icon: Icon(
                      Icons.star,
                      size: 30,
                      color: !isProgram ? Palette.iconColor : Colors.black54,
                    ))
              ],
            ),
            SizedBox(height: 20),
            if (isProgram)
              Container(
                height: height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Palette.backgroundDarkColor),
                child: ListView(
                  children: [
                    ProgramCard()
                  ],
                ),
              ),
            if (!isProgram)
              Container(
                height: height * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Palette.backgroundDarkColor),
                child: ListView(
                  children: [
                    Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ProgramIntro();
                              }));
                        },
                        leading: Icon(
                          Icons.star,
                          size: 32,
                          color: Colors.white,
                        ),
                        title: Text(
                          '500m running',
                          style: TextStyle(
                            fontFamily: MyFontFamily.Bebas,
                              fontWeight: FontWeight.bold,
                              color: Palette.iconColor,
                              fontSize: 21
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        tileColor: Palette.blockColor,
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
