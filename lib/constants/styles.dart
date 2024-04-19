import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';


ourStyle({double? size = 14, color = darkColor}){
  return GoogleFonts.poppins(
    fontSize: size,
    color: color,
  );

}
class Button extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const Button({
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 47.5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFA54BFF),
              Color(0xFFAF60FF),
              Color(0xFFA54BFF),
            ],
            stops: [0.1795, 0.5343, 0.776],
            transform: GradientRotation(172.82 * 3.14159265 / 180),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const MyTextField({super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
      ),

    );
  }
}
