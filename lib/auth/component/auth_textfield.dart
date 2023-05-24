import 'package:flutter/material.dart';

class AuthTextfield extends StatelessWidget {
  final controller;
  final String text;
  final bool obsecureText;

  AuthTextfield({
    super.key,
    required this.controller,
    required this.text,
    required this.obsecureText
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80),
      child: TextFormField(
        validator: (value) 
        {
          if(value == null || value.isEmpty)
          {
            return 'Harap Masukkan $text Anda';
          }
          return null;
        },
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          contentPadding: EdgeInsets.all(10),
          filled: true,
          fillColor: Colors.white60,
          hintText: text,
        ),
        style: TextStyle(color: Colors.brown, fontSize: 16),
      ),
    );
  }
}