import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_coffee_shop/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Berhasil Login!'),
              ElevatedButton(
                onPressed: ()
                {
                  FirebaseAuth.instance.signOut().then
                  ((value) => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstScreen())
                    ));
                }, 
                child: Text('Sign Out'))
            ],
          ),
        ),
      ),
    );
  }
}