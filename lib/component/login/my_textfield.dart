import 'package:flutter/material.dart';

class loginTextField extends StatelessWidget {
  const loginTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });
    final TextEditingController controller;
    final String hintText;
    final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.white
            ),
          ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.white,
          ), 
        ),
        labelText: hintText,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        filled: true,                
      ), 
      ),
    );
  }
}
