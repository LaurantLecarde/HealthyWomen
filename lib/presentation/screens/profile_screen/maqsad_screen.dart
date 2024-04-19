import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/constants/colors_app.dart';

class MaqsadScreen extends StatefulWidget {
  const MaqsadScreen({super.key});

  @override
  _MaqsadScreenState createState() => _MaqsadScreenState();
}

class _MaqsadScreenState extends State<MaqsadScreen> {
  Color containerColor = Colors.white;
  Color containerColor1 = Colors.white;
  Color containerColor2 = Colors.white;
  Color containerColor3 = Colors.white;
  Color containerColor4 = Colors.white;
  Color containerColor5 = Colors.white;

  void toggleColor() {
    setState(() {
      containerColor = containerColor == Colors.white ? Colors.green : Colors.white;
    });
  }
  void toggleColor1() {
    setState(() {
      containerColor1 = containerColor1 == Colors.white ? Colors.green : Colors.white;
    });
  }
  void toggleColor2() {
    setState(() {
      containerColor2 = containerColor2 == Colors.white ? Colors.green : Colors.white;
    });
  }
  void toggleColor3() {
    setState(() {
      containerColor3 = containerColor3 == Colors.white ? Colors.green : Colors.white;
    });
  }
  void toggleColor4() {
    setState(() {
      containerColor4 = containerColor4 == Colors.white ? Colors.green : Colors.white;
    });
  }
  void toggleColor5() {
    setState(() {
      containerColor5 = containerColor5 == Colors.white ? Colors.green : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kaloriya',textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700))),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18,top: 2),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(CupertinoIcons.arrow_left_circle_fill,color: Colors.black,size: 40),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              Text("Profilingizni to'ldiring",textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700))),
              const Gap(20),
              Container(
                width: 320,
                child: Text(
                    "Xavotir olmang, uni istalgan vaqtda keyinroq o'zgartirishingiz yoki hozircha o'tkazib yuborishingiz mumkin",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15))
                ),
              ),
              const Gap(30),
              InkWell(
                onTap: toggleColor,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple),
                      color: containerColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Kaloriyalarni kuzatish", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: toggleColor1,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: containerColor1,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Fitnes bo'yicha tafsiyalar", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: toggleColor2,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: containerColor2,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Trening va mashq rejalari", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: toggleColor3,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: containerColor3,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Retseptlar va parhez tafsiyalar", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: toggleColor4,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: containerColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Ruhiy va hissiy holatlarni qayt q.", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: toggleColor5,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      color: containerColor5,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 350,
                    height: 70,
                    child: Center(
                      child: Text("Boshqa", style: GoogleFonts.poppins(
                          textStyle: TextStyle(color: Colors.black, fontSize: 16)
                      )),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.appColor,
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            borderRadius: BorderRadius.circular(15),
            splashColor: Colors.green,
            child: Center(
              child: Text('Saqlash',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 19,color: Colors.white))),
            ),
          ),
        ),
      ),
    );
  }
}

