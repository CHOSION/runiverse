import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:runiverse/config/font.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/start/login.dart';
import 'package:runiverse/running/running.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool isProgram = true;
  File? userPickedImage;

  final _authentication = FirebaseAuth.instance;
  User? loggedUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser(){
    try {
      final user = _authentication.currentUser;
      if(user != null) {
        loggedUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Palette.backgroundDarkColor,
      appBar: PreferredSize(
        child: getAppBar(),
        preferredSize: Size.fromHeight(height * 0.25),
      ),
      body: getBody(),
    );
  }

  Widget getAppBar() {
    return AppBar(
        elevation: 0,
        backgroundColor: Palette.backgroundDarkColor,
        flexibleSpace: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: Palette.iconColor)),
                  child: Center(
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://flyclipart.com/thumb2/avatar-my-profile-profile-user-user-profile-icon-196366.png"),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "TEST1@MAIL.COM",
              style: TextStyle(
                  fontSize: 20,
                  color: Palette.iconColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: MyFontFamily.Bebas
              ),
            ),
          ],
        )));
  }

  Widget getBody() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "0\'0",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: MyFontFamily.Bebas),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Pace",
                        style:
                            TextStyle(
                                fontSize: 15,
                                color: Palette.iconColor,
                              fontFamily: MyFontFamily.Bebas
                            ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "00:00",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: MyFontFamily.Bebas),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Time",
                        style:
                            TextStyle(fontSize: 15,
                                color: Palette.iconColor,
                                fontFamily: MyFontFamily.Bebas),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: MyFontFamily.Bebas),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Distance(m)",
                        style:
                            TextStyle(fontSize: 15,
                                color: Palette.iconColor,
                                fontFamily: MyFontFamily.Bebas),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: MyFontFamily.Bebas),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "kcal",
                        style:
                            TextStyle(fontSize: 15,
                                color: Palette.iconColor,
                                fontFamily: MyFontFamily.Bebas),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
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
                        Icons.calendar_today,
                        size: 25,
                        color: isProgram ? Colors.white : Colors.black54,
                      )),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          isProgram = false;
                        });
                      },
                      icon: Icon(
                        Icons.recommend,
                        size: 25,
                        color: !isProgram ? Colors.white : Colors.black54,
                      ))
                ],
              ),
              SizedBox(height: 20),
              if (isProgram)
                Container(
                  height: height * 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Palette.backgroundDarkColor),
                  child: ListView(
                    children: [
                      // Card(
                      //   child: ListTile(
                      //     onTap: () {
                      //       Navigator.push(context, MaterialPageRoute(
                      //           builder: (BuildContext context) {
                      //         return ProgramIntro();
                      //       }));
                      //     },
                      //     leading: Icon(
                      //       Icons.run_circle_outlined,
                      //       size: 40,
                      //       color: Colors.white,
                      //     ),
                      //     title: Text(
                      //       '(Program Name)',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Palette.iconColor),
                      //     ),
                      //     subtitle: Text(
                      //       '(Date)',
                      //       style: TextStyle(color: Colors.grey),
                      //     ),
                      //     trailing: Icon(
                      //       Icons.arrow_forward_ios,
                      //       color: Colors.white,
                      //     ),
                      //     tileColor: Palette.blockColor,
                      //   ),
                      // )
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
                      // Card(
                      //   child: ListTile(
                      //     onTap: () {},
                      //     leading: Icon(
                      //       Icons.recommend,
                      //       size: 40,
                      //       color: Colors.white,
                      //     ),
                      //     title: Text(
                      //       '1st Trial',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Palette.iconColor),
                      //     ),
                      //     subtitle: Text(
                      //       '(Date)',
                      //       style: TextStyle(color: Colors.grey),
                      //     ),
                      //     tileColor: Palette.blockColor,
                      //   ),
                      // )
                    ],
                  ),
                )
            ])));
  }
}
