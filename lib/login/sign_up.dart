import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'reusable_widgets.dart';
import '../main.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text('YATOU'),
            centerTitle: true,
            titleTextStyle: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            backgroundColor: Colors.brown,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => Navigator.maybePop(context),
            ),
          ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.2, 20, 0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  //logoWidget("assets/images/logo.png"),
                    Center(
                      child:Text(
                        "Sign_Up", 
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.brown[900]),
                      )
                    ),
                  SizedBox(
                    height: 40,
                  ),
                  reusableTextField("Enter Username", Icons.person_outline,
                      false, _usernameTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Email", Icons.person_outline, false,
                      _emailTextController),
                  SizedBox(
                    height: 20,
                  ),
                  reusableTextField("Enter Password", Icons.lock_outlined, true,
                      _passwordTextController),
                  SizedBox(
                    height: 20,
                  ),
                  signInSignUpButton(context, false, () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      print("new account created");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BottomNavbar()));
                    }).onError((error, stackTrace) {
                      print("error ${error.toString()}");
                    });
                  }),
                ],
              ),
            ),
          )),
    );
  }
}
