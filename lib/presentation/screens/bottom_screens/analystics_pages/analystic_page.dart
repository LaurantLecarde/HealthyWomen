import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors_app.dart';

class AnalyzePage extends StatefulWidget {
  const AnalyzePage({super.key});

  @override
  State<AnalyzePage> createState() => _DateShowerState();
}

class _DateShowerState extends State<AnalyzePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      appBar: AppBar(
        backgroundColor: mainTheme(context),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Faollik\nKuzatish",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(14)),
                height: 40,
                width: 40,
                child: null),
          )
        ],
      ),
      body: _analyzesSection(),
    );
  }

  _analyzesSection() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          _dateSection(),
          _kcalSection(),
          _footBikeSection(),
          _todayInfo()
        ],
      ),
    );
  }

  _kcalSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("1883 Kcal",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35)),
          Text("Umumiy kilokaloriya", style: TextStyle(color: Colors.grey)),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("7580 m",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Masofa", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("9822",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Qadamlar", style: TextStyle(color: Colors.grey)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("75.1",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Yurak urushi", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  _footBikeSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _singleDataBuilder(const Color(0xfffd758a), "Piyoda", 2, 23.1, 4654,
              Icons.directions_run),
          const Gap(20),
          _singleDataBuilder(const Color(0xff383838), "Velosipedda", 24, 41.1,
              2345, Icons.electric_bike)
        ],
      ),
    );
  }

  _singleDataBuilder(Color color, String type, num time, num destination,
      num kcal, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2000), color: color),
                  child: Center(child: Icon(icon, color: Colors.white)),
                ),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      type,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text("$time minut",
                        style: GoogleFonts.poppins(
                            color: Colors.grey, fontSize: 12))
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$destination km",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Row(
                  children: [
                    Icon(Icons.water_drop_outlined, size: 15),
                    Text(
                      "$kcal kcal  ",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _todayInfo() {
    final today = DateTime.now();
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Bugungu ma'lumot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("${_getMonthName(today.month)} ${today.year}",
                      style: GoogleFonts.poppins(color: Colors.grey, fontSize: 13)),
                ],
              ),
              Icon(Icons.more_vert,color: Colors.grey)
            ],
          )
        ],
      ),
    );
  }

  _dateSection() {
    final today = DateTime.now();
    final dateStrings = [
      for (int i = -3; i <= 3; i++)
        i == 0
            ? _formatToday(today)
            : today.add(Duration(days: i)).day.toString()
    ];
    return SizedBox(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: dateStrings.map((dateString) {
          final isToday = dateString.startsWith('Bugun');
          return _buildDateTile(dateString, isToday);
        }).toList(),
      ),
    );
  }

  String _formatToday(DateTime date) {
    return 'Bugun, ${date.day} ${_getMonthName(date.month)}';
  }

  String _getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Yanvar';
      case 2:
        return 'Fevral';
      case 3:
        return 'Mart';
      case 4:
        return 'Aprel';
      case 5:
        return 'May';
      case 6:
        return 'Iyun';
      case 7:
        return 'Iyul';
      case 8:
        return 'Avgust';
      case 9:
        return 'Sentyabr';
      case 10:
        return 'Oktyabr';
      case 11:
        return 'Noyabr';
      case 12:
        return 'Dekabr';
      default:
        return '';
    }
  }

  Widget _buildDateTile(String dateString, bool isToday) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: isToday ? const Color(0xffebdafd) : null,
        ),
        child: Text(
          dateString,
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
            color: isToday ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
