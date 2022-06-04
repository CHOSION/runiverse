import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/running/program_intro.dart';
import 'package:runiverse/running/running.dart';
import 'package:runiverse/start/signup.dart';
import 'package:runiverse/running/home.dart';
import 'package:runiverse/running/profile.dart';
import 'package:runiverse/home/example.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _signUp(context)
            ],
          ),
        ),
        backgroundColor: Palette.backgroundLightColor,
      ),
    );
  }

  _header(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 84),
        Text(
          "Welcome!",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text("Runiverse에 오신 것을 환영합니다."),
        Text("이제부터 같이 힘차게 달려요!")
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.mail))),
        SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.lock)
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return Example();
                })
            );
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 17),
          ),
          style: ElevatedButton.styleFrom(
            primary: Palette.textDarkColor,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        TextButton(onPressed: () {}, child: Text("Forget password?"))
      ],
    );
  }

  _signUp(context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("계정이 없으신가요?"),
              TextButton(onPressed: () {
                print("SignUp Pressed.");
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return SignUpPage();
                    })
                );
              }, child: Text("회원가입"))
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              print("SignUp Pressed.");
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return Profile();
                  })
              );
            },
            icon: Image.asset('assets/apple_logo.png', width: 18.0, height: 18.0),
            style: ElevatedButton.styleFrom(
              primary: Palette.iconColor,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 12),
            ),
            label: const Text(
              "    Continue with Apple",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 5),
          ElevatedButton.icon(
            onPressed: () {
              print("SignUp Pressed.");
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ProgramIntro();
                  })
              );
            },
            icon: Image.asset('assets/google_logo.png', width: 15.0, height: 15.0),
            style: ElevatedButton.styleFrom(
              primary: Palette.iconColor,
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 12),
            ),
            label: const Text(
              "   Continue with Google",
              style: TextStyle(fontSize: 17),
            ),
          )
        ]
    );
  }
}