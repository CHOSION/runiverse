import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:runiverse/login.dart';
import 'package:runiverse/config/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterDemo',
      theme: ThemeData(
          primaryColor: Palette.iconColor,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Column(
          children: [
            Image.asset('assets/runiverse_logo.png', height: 85, width: 85),
            const Text('Runiverse',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Palette.iconColor),
            )
          ],
        ),
        backgroundColor: Palette.backgroundDarkColor,
        nextScreen: const Home(),
      splashIconSize: 128,
      splashTransition: SplashTransition.fadeTransition,
      duration: 2500,
      pageTransitionType: PageTransitionType.rightToLeft,
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
