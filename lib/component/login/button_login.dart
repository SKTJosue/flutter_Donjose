import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final Function()? onTap;
  const myButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 120.0,vertical: 5.0),
        decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius: BorderRadius.circular(8), 
          ),
          child: const Center(
            child: Text("Iniciar Sesion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            ),
          ),
      ),
    );
  }
}