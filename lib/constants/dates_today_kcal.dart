import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:google_fonts/google_fonts.dart";

kcalSection() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("1883 Kcal",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 35)),
        Text("Umumiy kilokaloriya", style: GoogleFonts.poppins(color: Colors.grey)),
        const Gap(10),
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
                    GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("Masofa", style: GoogleFonts.poppins(color: Colors.grey)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("9822",
                    style:
                    GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("Qadamlar", style: GoogleFonts.poppins(color: Colors.grey)),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("75.1",
                    style:
                    GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16)),
                Text("Yurak urushi", style: GoogleFonts.poppins(color: Colors.grey)),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

dateSection() {
  final today = DateTime.now();
  final dateStrings = [
    for (int i = -3; i <= 3; i++)
      i == 0
          ? formatToday(today)
          : today.add(Duration(days: i)).day.toString()
  ];
  return SizedBox(
    height: 35,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: dateStrings.map((dateString) {
        final isToday = dateString.startsWith('Bugun');
        return buildDateTile(dateString, isToday);
      }).toList(),
    ),
  );
}

String formatToday(DateTime date) {
  return 'Bugun, ${date.day} ${getMonthName(date.month)}';
}

String getMonthName(int month) {
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

String getWeekName(int week) {
  switch (week) {
    case 1:
      return 'Dushanba';
    case 2:
      return 'Seshanba';
    case 3:
      return 'Chorshanba';
    case 4:
      return 'Payshanba';
    case 5:
      return 'Juma';
    case 6:
      return 'Shanba';
    case 7:
      return 'Yakshanba';
    default:
      return '';
  }
}

Widget buildDateTile(String dateString, bool isToday) {
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