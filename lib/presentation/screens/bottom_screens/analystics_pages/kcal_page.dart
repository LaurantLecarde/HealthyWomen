import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/analystics_pages/on_bike_page.dart';
import '../../../../constants/colors_app.dart';
import '../../../../constants/dates_today_kcal.dart';
import '../../../../constants/navigators.dart';
import '../../../widgets/leading_icon.dart';
class KcalPage extends StatefulWidget {
  const KcalPage({super.key});

  @override
  State<KcalPage> createState() => _KcalPageState();
}

class _KcalPageState extends State<KcalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      appBar: AppBar(
        backgroundColor: mainTheme(context),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: const LeadingIcon(),
        title: Text("Kaloriya", style: GoogleFonts.poppins(fontSize:18)),
        centerTitle: true,
      ),
      body: _allKcal(),
    );
  }

  _allKcal() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          dateSection(),
          const Gap(10),
          kcalSection(),
          const Gap(20),
          _dataSection(324, "Fitness", 235, "Yo'lakda", 432, "Arqonda"),
          ElevatedButton(onPressed: ()=> navPush(context,OnBikePage()) ,child:Text("onBike"))
        ],
      ),
    );
  }

  _dataSection(num kcalOne, String typeOne, num kcalTwo, String typeTwo,
      num kcalThree, String typeThree) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          height: 112,
          width: 112,
          decoration: BoxDecoration(
              color: const Color(0xfffd6078),
              borderRadius: BorderRadius.circular(25),
              boxShadow: const [
                BoxShadow(color: Colors.black12),
                BoxShadow(color: Colors.black12),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.fitness_center, color: Colors.white, size: 20),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("$kcalOne ",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("Kcal",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 12))
                ],
              ),
              Text(typeOne,
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 12))
            ],
          ),
        ),
        _getSingleKcal(typeTwo, kcalTwo, Icons.keyboard_option_key),
        _getSingleKcal(typeThree, kcalThree, Icons.query_stats)
      ],
    );
  }

  _getSingleKcal(String type, num kcal, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 112,
      width: 112,
      decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            top: BorderSide(color: Colors.black, width: 3),
            left: BorderSide(color: Colors.transparent),
            right: BorderSide(color: Colors.transparent),
            bottom: BorderSide(color: Colors.transparent),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$kcal ",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              Text("Kcal",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11))
            ],
          ),
          Text(type,
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11))
        ],
      ),
    );
  }
}
