import 'package:flutter/material.dart';
import 'package:healthy_women/presentation/screens/auth_init_screens/access.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/analystics_pages/analystic_page.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/calory_screen/p_kaloriya.dart';
import 'package:healthy_women/presentation/screens/main_page.dart';

void main() {
  runApp(const HealthyWomen());
}

class HealthyWomen extends StatelessWidget {
  const HealthyWomen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xfff4f5f6),
        canvasColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
      ),
      home: const MainPage(),
    );
  }
}

