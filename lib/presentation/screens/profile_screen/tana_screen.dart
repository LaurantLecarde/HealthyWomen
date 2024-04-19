import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class MeningTanam extends StatefulWidget {
  const MeningTanam({super.key});

  @override
  State<MeningTanam> createState() => _MeningTanamState();
}

class _MeningTanamState extends State<MeningTanam> {
  int _currentValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kaloriya',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700))),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18, top: 2),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(CupertinoIcons.arrow_left_circle_fill,
                  color: Colors.black, size: 40),
            ),
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(30),
                    Text("Sizning vazningiz nechi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700))),
                    const Gap(20),
                    Container(
                      width: 320,
                      child: Text(
                          "Vazningiz Kilogramda ko'rsatilgan, Havotir olmang buni keyinchalik ham o'zgartira olasiz",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 15))),
                    ),
                    const Gap(150),
                    NumberPicker(
                      value: _currentValue,
                      minValue: 1,
                      maxValue: 250,
                      textStyle: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: Colors.black)),
                      selectedTextStyle: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700,color: Colors.blue)),
                      itemHeight: 100,
                      itemWidth: 100,
                      axis: Axis.horizontal,
                      onChanged: (value) =>
                          setState(() => _currentValue = value),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                    const Gap(25),
                    Text('Sizning vazningiz $_currentValue kg',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black)))
                  ]
              ),
            )
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListTile(
          leading: TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('< orqaga',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black))),
          ),
          trailing: Card(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => TanaBoyi()), (route) => true);
              },
              child: Text('Keyingisi >',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black))),
            ),
          ),
        ),
      )
    );
  }
}



class TanaBoyi extends StatefulWidget {
  const TanaBoyi({super.key});

  @override
  State<TanaBoyi> createState() => _TanaBoyiState();
}

class _TanaBoyiState extends State<TanaBoyi> {
  int _currentValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kaloriya',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w700))),
          leading: Padding(
            padding: const EdgeInsets.only(left: 18, top: 2),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(CupertinoIcons.arrow_left_circle_fill,
                  color: Colors.black, size: 40),
            ),
          ),
        ),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(30),
                    Text("Sizning bo'yingiz nechi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700))),
                    const Gap(20),
                    Container(
                      width: 320,
                      child: Text(
                          "Bo'y SM da ko'rsatilgan, Bu bizning mobil ilovani siz uchun moslashtirishimiz uchun kerak bo'adi",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 15))),
                    ),
                    const Gap(100),
                    NumberPicker(
                      value: _currentValue,
                      minValue: 1,
                      maxValue: 250,
                      textStyle: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700,color: Colors.black)),
                      selectedTextStyle: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 40, fontWeight: FontWeight.w700,color: Colors.blue)),
                      itemHeight: 100,
                      itemWidth: 100,
                      axis: Axis.vertical,
                      onChanged: (value) =>
                          setState(() => _currentValue = value),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black26),
                      ),
                    ),
                    const Gap(25),
                    Text("Sizning bo'yingiz $_currentValue sm",style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700,color: Colors.black)))
                  ]
              ),
            )
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff0015ff),
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

