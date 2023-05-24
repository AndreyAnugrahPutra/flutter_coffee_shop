import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


import 'package:flutter_coffee_shop/auth/signup_page.dart';
import 'package:flutter_coffee_shop/pages/home_page.dart';
import 'auth.dart';
import 'component/auth_textfield.dart';
import '../components/bg_coffee.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {
  
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final bool _isLogin = false;
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController passControl = TextEditingController();

  void Login() async
  {
    if(!_formKey.currentState!.validate()) return;
    final email = emailControl.value.text;
    final password = passControl.value.text;

    await Auth().signInWithEmailAndPassword(email, password).then((value) => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage())
    ));
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          BgCoffee(),
          PageView(
            children: [
              Scaffold(
                backgroundColor: Colors.black54,
                body: Center(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text("LOGIN",
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
                            obsecureText: false,
                          ),
                    
                          const SizedBox(height: 20),
                    
                          AuthTextfield(
                            controller: passControl,
                            text: 'Password', 
                            obsecureText: true,
                          ),
                    
                          const SizedBox(height: 20),
                    
                          ElevatedButton(
                            onPressed: () => Login(), 
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(250, 40),
                              backgroundColor: Colors.brown[400],
                            ),
                          ),
                    
                          const SizedBox(height: 80),
                    
                          Text('Belum Punya Akun ? Silahkan Swipe',
                            style: TextStyle(color: Colors.white),
                          ),
                    
                          const SizedBox(height: 10),
                    
                          // TextButton(
                          //   onPressed: (){
                          //     Navigator.push(
                          //       context, 
                          //       MaterialPageRoute(builder: (context) => SignupPage())
                          //       );
                          //   }, 
                          //   child: Text('Registrasi',
                          //     style: TextStyle(
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          //   style: TextButton.styleFrom(
                          //     side: BorderSide(width: 1, color: Colors.white),
                          //     fixedSize: Size(120, 20),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            SignupPage()
            ],
          )
          
        ],
      )
    );
  }
}