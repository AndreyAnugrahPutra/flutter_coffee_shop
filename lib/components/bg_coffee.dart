import 'package:flutter/material.dart';

class BgCoffee extends StatelessWidget {
  const BgCoffee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/SplashScreen.jpg'),
          fit: BoxFit.cover
          )
      ),
    );
  }
}