import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/calory_screen/tolov.dart';

class Kaloriya extends StatefulWidget {
  const Kaloriya({super.key});

  @override
  State<Kaloriya> createState() => _KaloriyaState();
}

class _KaloriyaState extends State<Kaloriya> {
  bool isSelected = false;
  bool isBoxSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFA54BFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Kaloriya',textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xffFFFFFF)
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(50)
            ),
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back_ios_outlined,size: 14,),
              // color: Color(0xff0F1729),

            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            Center(
              child: Container(
                alignment: Alignment.center,
                width: 340,
                height: 186,
                decoration: BoxDecoration(
                  color: Color(0xFFA54BFF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(0, 0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/calory/women.png')
                      ],
                    ),
                    Positioned(
                      child: SizedBox(
                        width: 220,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              const SizedBox(height: 10,),
                              Text(
                                '50% chegirma',
                                style: GoogleFonts.dmSans(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xffFFFFFF),
                                  height: 1,
                                  letterSpacing: 0.5,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 15,),
                              Text(
                                'Tanangizni Sog’lom ayol bilan shakllantiring',
                                style: GoogleFonts.dmSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFFFFFF),
                                  height: 1,
                                  letterSpacing: 0.5,
                                ),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Text('Cheksiz kirishni tanlang!',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xffFFFFFF),
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Container(
              width: 340,
              child: Text("Imkoniyatingiz bo'lishi uchun ushbu mashqni faollashtiring do'stlaringiz bilan mashq qiling",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF),
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 326,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 241, 241, 0.10196078431372549),
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      height: 34,
                      decoration: BoxDecoration(
                        color: !isSelected ?  Colors.transparent : Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = true;
                          });
                        },
                        child: Center(
                          child: Text(
                            "Yillik",
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isSelected ? Color(0xFFA54BFF) : Color(0xffFFFFFF),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 34,
                      decoration: BoxDecoration(
                        color: !isSelected ? Color(0xffFFFFFF) : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = false;
                          });
                        },
                        child: Center(
                          child: Text(
                            "Oylik",
                            style: GoogleFonts.dmSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isSelected ? Color(0xffFFFFFF) : Color(0xFFA54BFF),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  isBoxSelected = true;
                });
              },
              child: Container(
                width: 327,
                height: 171,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      width: 1.5,
                      color: isBoxSelected? Color(0xffFFFFFF) : Color(0xFF932BFC),
                    )
                ),
                child: Column(

                  children: [
                    const SizedBox(height: 25,),
                    Text("Asosiy",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Text("\$119.00  /Yillik",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 28,),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isBoxSelected? Color(0xffFFFFFF) : Color.fromRGBO(0, 0, 0, 0.10196078431372549),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text("\$9.99 / Oylik har yili to'lanadi",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: isBoxSelected? Color(0xFFA54BFF) : Color(0xffFFFFFF),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            const SizedBox(height: 25,),
            InkWell(
              onTap: (){
                setState(() {
                  isBoxSelected = false;
                });
              },
              child: Container(
                width: 327,
                height: 171,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      width: 1.5,
                      color: isBoxSelected?  Color(0xFF932BFC) : Color(0xffFFFFFF),
                    )
                ),
                child: Column(

                  children: [
                    const SizedBox(height: 25,),
                    Text("Pro",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Text("\$239.00  /Yillik",
                      style: GoogleFonts.dmSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 28,),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: isBoxSelected? Color.fromRGBO(0, 0, 0, 0.10196078431372549) : Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Text("\$19.99 / Oylik har yili to'lanadi",
                          style: GoogleFonts.dmSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: isBoxSelected? Color(0xffFFFFFF) : Color(0xFFA54BFF),
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            const SizedBox(height: 100,)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => Payment()),
          );
        },
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffA54BFF),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.center,
              width: 327,
              height: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xfffFFFFF),
              ),
              child: Center(
                child: Text(
                  "To'lash",
                  style: GoogleFonts.dmSans(
                    color: Color(0xffA54BFF),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}