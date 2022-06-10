import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/start/login.dart';

class ProgramsTab extends StatefulWidget {
  const ProgramsTab({Key? key}) : super(key: key);

  @override
  State<ProgramsTab> createState() => _ProgramsTabState();
}

class _ProgramsTabState extends State<ProgramsTab> {

  bool isProgram = true;
  bool isLiked = false;

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
                height: height * 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                          Icons.run_circle_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        title: Text(
                          '30min Running',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Palette.iconColor),
                        ),
                        // subtitle: Text(
                        //   '22 May 2022',
                        //   style: TextStyle(color: Colors.grey),
                        // ),
                        trailing: IconButton(
                          icon: isLiked
                              ? Icon(Icons.favorite_border, color: Palette.iconColor)
                              : Icon(Icons.favorite, color: Palette.iconColor),
                          onPressed: () {
                            setState(() {
                              isLiked = !isLiked;
                            });
                          },
                        ),
                        tileColor: Palette.blockColor,
                      ),
                    )
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
                                return LoginPage();
                              }));
                        },
                        leading: Icon(
                          Icons.star,
                          size: 32,
                          color: Colors.white,
                        ),
                        title: Text(
                          '(Program Name)',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Palette.iconColor),
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