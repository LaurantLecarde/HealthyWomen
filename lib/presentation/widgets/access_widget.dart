import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy_women/presentation/screens/auth_init_screens/onboarding-2/first.dart';

import '../screens/auth_init_screens/onboarding-1/first.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const FirstScreenOne()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      width: 250, height: 300,
      'assets/images_on_boarding/access.png',
      fit: BoxFit.contain,
    );
  }
}
