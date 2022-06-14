import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/start/signup.dart';
import 'package:runiverse/home/runiverse.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _authentication = FirebaseAuth.instance;

  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();

  String userEmail = '';
  String userPassWord = '';

  void _tryValidation(){
    final isValid = _formKey.currentState!.validate();
    if(isValid){
      _formKey.currentState!.save();
    }
  }

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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
              key: ValueKey(1),
              validator: (value){
                if(value!.isEmpty || !value.contains('@') ){
                  return 'Please enter a valid email address.';
                }
                return null;
              },
              onSaved: (value){
                userEmail = value!;
              },
              onChanged: (value){
                userEmail = value;
              },
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
                  filled: true,
                  prefixIcon: Icon(Icons.mail))),
          SizedBox(height: 5),
          TextFormField(
            key: ValueKey(2),
            validator: (value){
              if(value!.isEmpty || value.length < 6){
                return 'Password must be at least 7 characters long.';
              }
              return null;
            },
            onSaved: (value){
              userPassWord = value!;
            },
            onChanged: (value){
              userPassWord = value;
            },
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
            onPressed: () async{
              _tryValidation();
              try {
                final newUser =
                await _authentication.signInWithEmailAndPassword(
                  email: userEmail,
                  password: userPassWord,
                );
                if (newUser.user != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RuniverseMain();
                      },
                    ),
                  );
                }
              }catch(e){
                print(e);
              }
              print("Entered "+userEmail);
              print("Entered "+userPassWord);
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
      ),
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
                    return RuniverseMain();
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
                    return RuniverseMain();
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
