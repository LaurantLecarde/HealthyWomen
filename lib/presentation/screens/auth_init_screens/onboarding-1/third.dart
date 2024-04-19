import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/auth_init_screens/onboarding-2/first.dart';
import 'package:healthy_women/presentation/screens/main_page.dart';

class ThirdScreenOne extends StatefulWidget {
  const ThirdScreenOne({super.key});

  @override
  State<ThirdScreenOne> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image:
                AssetImage('assets/images_on_boarding/onboarding-1/third.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.5),
                Color(0xFFFF6969),
                Color(0xFFFF6969),
              ])),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images_on_boarding/access.png',
                          width: 150, height: 150),
                      Row(
                        children: [
                          CupertinoButton(
                              child: Text("O'tkazish",
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                              onPressed: () {}),
                          Icon(CupertinoIcons.right_chevron,
                              color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 450),
                  Center(
                    child: Column(
                      children: [
                        Text("KUNDALIK RETSEPTLAR",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            )),
                        Text("FITNES MAQSADLARINGIZGA",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                        Text("ERISHISHGA YORDAM BERADIGAN",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                        Text("MASHQ REJALARI",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(CupertinoIcons.chevron_right_2,
                                color: Colors.white),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => FirstScreenTwo()));
                              },
                              child: Container(
                                width: 132,
                                height: 47,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(0, 3),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Keyingisi",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )),
                                      Icon(CupertinoIcons.right_chevron,
                                          color: Colors.black),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
