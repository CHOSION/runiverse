import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/login.dart';
import 'package:runiverse/running/programs.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _logIn(context)
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
        SizedBox(height: 60),
        Text(
          "Sign Up",
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
                hintText: "ID",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.account_box_rounded))),
        SizedBox(height: 5),
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
                  return Programs();
                })
            );
          },
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 17),
          ),
          style: ElevatedButton.styleFrom(
            primary: Palette.textDarkColor,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 12),
          ),
        )
      ],
    );
  }

  _logIn(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("계정이 있으신가요?"),
        TextButton(onPressed: () {
          print("Login Pressed.");
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
                return LoginPage();
              })
          );
        },
            child: Text("로그인"))
      ],
    );
  }
}
