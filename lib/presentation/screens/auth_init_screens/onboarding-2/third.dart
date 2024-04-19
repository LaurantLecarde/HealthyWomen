import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/main_page.dart';

class ThirdScreenTwo extends StatefulWidget {
  const ThirdScreenTwo({super.key});

  @override
  State<ThirdScreenTwo> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFF6969),
                  Color(0xFFFF6969).withOpacity(0.6),
                  Color(0xFFFF6969),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:
                Image.asset('assets/images_on_boarding/onboarding-2/third.png'),
          ),
          Center(
            child: Image.asset(
              'assets/images_on_boarding/onboarding-2/background-onboarding-2.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 70),
                Image.asset('assets/images_on_boarding/access.png',
                    height: 250, width: 250),
                Text("FITNES MAQSADLARINGIZGA ERISHISHGA",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                Text("YORDAM BERADIGAN MASHQ REJALARI ",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => MainPage()));
                  },
                  child: Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("Keyingisi >",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
