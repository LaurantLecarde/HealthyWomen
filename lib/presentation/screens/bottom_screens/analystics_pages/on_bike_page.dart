import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/analystics_pages/on_foot_page.dart';
import '../../../../constants/colors_app.dart';
import '../../../../constants/dates_today_kcal.dart';
import '../../../../constants/navigators.dart';
import '../../../widgets/leading_icon.dart';
class OnBikePage extends StatefulWidget {
  const OnBikePage({super.key});

  @override
  State<OnBikePage> createState() => _OnBikePageState();
}

class _OnBikePageState extends State<OnBikePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: mainTheme(context),
        appBar: AppBar(
          backgroundColor: mainTheme(context),
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: const LeadingIcon(),
          title: Text("Velosipetda", style: GoogleFonts.poppins(fontSize: 18)),
          centerTitle: true,
        ),
        body: _bikeSection(),
      ),
    );
  }

  _bikeSection() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(30),
          _bikeIconData(1234),
          const Gap(30),
          _calendarSection(),
          const Gap(30),
          ElevatedButton(onPressed: ()=> navPush(context,OnFootPage()) ,child:Text("onFoot"))

        ],
      ),
    );
  }

  _bikeIconData(int step) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
              color: const Color(0xfff4ebfd),
              borderRadius: BorderRadius.circular(2134)),
          child: Center(
              child: Icon(Icons.electric_bike,
                  color: AppColors.appColor, size: 50)),
        ),
        const Gap(30),
        Text("Velosipetda",
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 20)),
        const Gap(15),
        Text("$step qadam",
            style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12)),
      ],
    );
  }

  _calendarSection() {
    return SizedBox(
      height:400,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: AppColors.appColor.withAlpha(20),
              borderRadius: BorderRadius.circular(23)
            ),
            height: 35,
            width: double.infinity,
            child:  TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: mainTheme(context),
                  borderRadius: BorderRadius.circular(23)
              ),
              labelStyle: GoogleFonts.poppins(
                color: Color(0xffa44bfd),
                fontWeight:FontWeight.bold,
                fontSize:12
              ),
              tabs: [
                Tab(text: "Kunlik"),
                Tab(text: "Haftalik"),
                Tab(text: "Oylik")
              ],
            ),
          ),
          const Gap(30),
          Expanded(
            child: TabBarView(children: [
              Center(child: _todayInfo()),
              Center(child:Text("Hafta")),
              Center(child: Text("Oylik")),
            ]),
          )
        ],
      ),
    );
  }

  _todayInfo() {
    var today = DateTime.now();
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bugun",
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12)),
          Text(
            "${getWeekName(today.weekday)}, ${today.day} ${getMonthName(today.month)}",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const Gap(20),
          SizedBox(
            height: 190,
            child: LineChart(mainData()),
          ),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _kcalBuilder("480", "Kaloriyalar"),
              _kcalBuilder("32:22", "Vaqt"),
              _kcalBuilder("4.84", "Kilometr"),
            ],
          )
        ],
      ),
    );
  }

  _kcalBuilder(String data, String type) {
    return SizedBox(
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$data  ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 15)),
              Icon(
                CupertinoIcons.arrowtriangle_down_circle_fill,
                color: AppColors.appColor,
                size: 16,
              )
            ],
          ),
          Text(type,
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 13))
        ],
      ),
    );
  }

  List<Color> gradientColors = [
    AppColors.appColor,
    AppColors.appColor,
    AppColors.appColor
  ];

  LineChartData mainData() {
    return LineChartData(
      gridData: const FlGridData(
        show: false,
      ),
      titlesData: const FlTitlesData(
        show: false,
      ),
      borderData: FlBorderData(
        show: false,
      ),
      minX: 0,
      maxX: 22,
      minY: 0,
      maxY: 800,
      lineBarsData: [
        LineChartBarData(
          curveSmoothness: 0.7,
          spots: const [
            FlSpot(0, 374),
            FlSpot(2, 576),
            FlSpot(4, 463),
            FlSpot(6, 667),
            FlSpot(8, 363),
            FlSpot(10, 765),
            FlSpot(12, 561),
            FlSpot(14, 771),
            FlSpot(16, 469),
            FlSpot(18, 677),
            FlSpot(20, 571),
            FlSpot(22, 800),
          ],
          isCurved: true,
          gradient: LinearGradient(
            colors: gradientColors,
          ),
          barWidth: 2,
          dotData: const FlDotData(
            show: false,
          ),
          belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.appColor.withAlpha(40),
                    AppColors.appColor.withAlpha(30),
                    AppColors.appColor.withAlpha(20),
                    AppColors.appColor.withAlpha(10),
                    AppColors.appColor.withAlpha(0),
                  ])),
        ),
      ],
    );
  }
}
