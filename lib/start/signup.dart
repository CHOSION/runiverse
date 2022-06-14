import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:runiverse/config/palette.dart';
import 'package:runiverse/start/login.dart';
import 'package:runiverse/home/runiverse.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _authentication = FirebaseAuth.instance;

  bool isSignupScreen = true;
  final _formKey = GlobalKey<FormState>();

  String userId = '';
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
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: Container(
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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // TextFormField(
          //     key: ValueKey(1),
          //     validator: (value){
          //       if(value!.isEmpty || value!.length < 4){
          //         return 'Please enter at least 4 characters';
          //       }
          //       return null;
          //     },
          //     onSaved: (value){
          //       userId = value!;
          //     },
          //     onChanged: (value){
          //       userId = value;
          //     },
          //     decoration: InputDecoration(
          //         hintText: "ID",
          //         border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(10),
          //             borderSide: BorderSide.none),
          //         fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          //         filled: true,
          //         prefixIcon: Icon(Icons.account_box_rounded))),
          SizedBox(height: 5),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
              key: ValueKey(2),
              validator: (value){
                if(value!.isEmpty || !value.contains('@')){
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
            key: ValueKey(3),
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
              try{
                final newUser = await _authentication.createUserWithEmailAndPassword(
                  email: userEmail,
                  password: userPassWord
                );

                await FirebaseFirestore.instance.collection('user').doc(newUser.user!.uid)
                .set({
                  'ID': userId,
                  'Email': userEmail,
                  'PW': userPassWord
                });

                if(newUser.user != null){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return RuniverseMain();
                      })
                  );
                }
              } catch(e) {
                print(e);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                    Text('Please check your email and password'),
                  ),
                );
              }
              print("Enrolled "+userId);
              print("Enrolled "+userEmail);
              print("Enrolled "+userPassWord);
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
      ),
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
