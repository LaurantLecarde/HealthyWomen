import 'package:flutter/material.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/news_pages/news_page.dart';
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
        primaryColor: const Color(0xfff4f5f6)
      ),
      home: const NewsPage(),
    );
  }
}

