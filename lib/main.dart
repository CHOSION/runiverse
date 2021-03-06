import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:runiverse/start/login.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/config/font.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontFamily: MyFontFamily.Bebas,
                  color: Palette.iconColor),
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
