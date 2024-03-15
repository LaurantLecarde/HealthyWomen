import 'package:flutter/material.dart';
import 'package:healthy_women/presentation/screens/main_page.dart';

void main() {
  runApp(const HealthyWomen());
}

class HealthyWomen extends StatelessWidget {
  const HealthyWomen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const MainPage(),
    );
  }
}
