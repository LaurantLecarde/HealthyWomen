import 'package:flutter/material.dart';

import '../../widgets/access_widget.dart';

class Access extends StatelessWidget {
  const Access({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFA54BFF),
      body: Center(
        child: MyWidget(),
      ),
    );
  }
}
