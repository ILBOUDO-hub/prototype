import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:prototype/main.dart';
import 'package:prototype/login/sign_up.dart';
import '../body/body_home.dart';
import 'reusable_widgets.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
           
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    // logoWidget("assets/images/lycee1.jpg"),
                    Center(
                      child:Text(
                        "YATOU", 
                        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Colors.brown[900]),
                      )
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Username", Icons.person_outline,
                        false, _emailTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", Icons.lock_outline,
                        true, _passwordTextController),
                    const SizedBox(
                      height: 30,
                    ),

                    signInSignUpButton(context, true, () {
                 
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavbar()));
                      })])
                   
                  
                ),
              ),
            )
        /*floatingActionButton: FloatingActionButton.extended(
            heroTag: 'uniqueTag',
            label: Row(
              children: [Icon(Icons.admin_panel_settings), Text('Admin')],
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Admin(),
                  )
                 );
            })*/
            );
  }
 

}