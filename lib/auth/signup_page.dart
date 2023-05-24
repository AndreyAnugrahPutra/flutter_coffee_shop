import 'dart:ui';

import 'package:flutter/material.dart';

// import '../components/bg_coffee.dart';
import 'component/auth_textfield.dart';
// import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.black54,
            // appBar: AppBar(
            //   backgroundColor: Colors.transparent,
            //   title: Text('Login'),
            // ),
            body: Center(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text("SIGNUP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    AuthTextfield(
                      controller: emailControl, 
                      text: 'Email', 
                      obsecureText: false
                    ),

                    const SizedBox(height: 20),

                    AuthTextfield(
                      controller: passControl, 
                      text: 'Password', 
                      obsecureText: true
                    ),

                    const SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text('Buat Akun'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(250, 40),
                        backgroundColor: Colors.brown[400],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          )
        ],
      )
      );
  }
}