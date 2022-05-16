import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

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
          primaryColor: Colors.blue,
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
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Color.fromRGBO(73, 224, 199, 1)),
            )
          ],
        ),
        backgroundColor: Color.fromRGBO(8, 3, 24, 1),
        nextScreen: const Home(),
      splashIconSize: 128,
      duration: 3500,
    );
  }
}


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
    );
  }
}
