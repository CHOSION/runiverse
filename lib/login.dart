import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
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
      children: [
        SizedBox(height: 156),
        Text(
          "Welcome!",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Text("Runiverse에 오신 것을 환영합니다."),
        Text("이제부터 같이 힘차게 달려요!")
      ],
    );
  }


  _inputField(context) {
    return Column(
      children: [
        TextField(
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Theme
                    .of(context)
                    .primaryColor
                    .withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.mail)
            )
        ),
        SizedBox(height: 10),
        TextField(
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none),
                fillColor: Theme
                    .of(context)
                    .primaryColor
                    .withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.lock)
            ),
          obscureText: true,
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: (){},
            child: Text(
              "로그인",
              style: TextStyle(fontSize: 25),
            ),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(vertical: 12),
          ),
        )
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(onPressed: () {}, child: Text("Forget password?"));
  }

  _signUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("계정이 없으신가요?"),
        TextButton(onPressed: () {}, child: Text("회원가입"))
      ],
    );
  }
}