import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/constants/colors_app.dart';
import 'package:healthy_women/presentation/screens/profile_screen/profile_page.dart';

import '../../../constants/dates_today_kcal.dart';
import '../../../constants/navigators.dart';
import '../../../model/exe_model/meal_model.dart';
import '../../../model/exe_model/news_model.dart';
import 'analystics_pages/kcal_page.dart';
import 'analystics_pages/on_bike_page.dart';
import 'analystics_pages/on_foot_page.dart';
import 'daily_recieps/detailed_receipt.dart';
import 'news_pages/detailed_new.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Color> gradientColors = [
    AppColors.appColor,
    AppColors.appColor,
    AppColors.appColor
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainTheme(context),
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text("Salom",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: ()=>navPush(context,const ProfilePage()),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(14)),
                    height: 40,
                    width: 40,
                    child: null),
              ),
            )
          ],
        ),
        backgroundColor: mainTheme(context), body: _allScreens());
  }

  _allScreens() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _analyzesSection(),
          _newsSection(),
          _saladSection(),
        ],
      ),
    );
  }

  _analyzesSection() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(20),
          dateSection(),
          InkWell(
            onTap: () => navPush(context, const KcalPage()),
            child: kcalSection(),
          ),
          _footBikeSection(),
          _todayInfo(),
          // ElevatedButton(
          //     onPressed: () => navPush(context, KcalPage()),
          //     child: Text("Kcal"))
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
          InkWell(
            onTap: () => navPush(context, const OnFootPage()),
            child: _singleDataBuilder(const Color(0xfffd758a), "Piyoda", 2,
                23.1, 4654, Icons.directions_run),
          ),
          const Gap(20),
          InkWell(
            onTap: () => navPush(context, const OnBikePage()),
            child: _singleDataBuilder(const Color(0xff383838), "Velosipedda",
                24, 41.1, 2345, Icons.electric_bike),
          )
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
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$destination km  ",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Row(
                  children: [
                    const Icon(Icons.water_drop_outlined, size: 15),
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
      padding: const EdgeInsets.all(20),
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
                  const Text("Bugungi ma'lumot",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("${getMonthName(today.month)} ${today.year}",
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 13)),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert, color: Colors.grey))
            ],
          ),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _todayInfoBuilder(
                      "Kaloriya", 630.23, "Kcal", Icons.water_drop_outlined),
                  const Gap(15),
                  _todayInfoBuilder(
                      "Qadamlar", 1234, "Steps", Icons.directions_run),
                ],
              ),
              const Gap(15),
              Container(
                padding: const EdgeInsets.only(top: 12, right: 12),
                height: 245,
                width: 156,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.grey.shade300)),
                child: Stack(children: [
                  LineChart(mainData()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Gap(12),
                      Text("Yurak urishi",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 13)),
                      Icon(
                        Icons.monitor_heart_outlined,
                        color: AppColors.appColor,
                        size: 20,
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 12,
                    left: 12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("74",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                        Text("bpm",
                            style: GoogleFonts.poppins(
                                color: Colors.grey, fontSize: 11)),
                      ],
                    ),
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }

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
      maxX: 12,
      minY: 0,
      maxY: 120,
      lineBarsData: [
        LineChartBarData(
          curveSmoothness: 0.45,
          spots: const [
            FlSpot(0, 74),
            FlSpot(2, 76),
            FlSpot(4, 63),
            FlSpot(6, 67),
            FlSpot(8, 63),
            FlSpot(10, 65),
            FlSpot(12, 61),
            FlSpot(13, 71),
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
                    AppColors.appColor.withAlpha(100),
                    AppColors.appColor.withAlpha(80),
                    AppColors.appColor.withAlpha(60),
                    AppColors.appColor.withAlpha(40),
                    AppColors.appColor.withAlpha(0),
                  ])),
        ),
      ],
    );
  }

  _todayInfoBuilder(String type, num howMuch, String exType, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 156,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(type,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 13)),
              Icon(icon, size: 20, color: AppColors.appColor)
            ],
          ),
          const Gap(15),
          Text("$howMuch",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 15)),
          Text(exType,
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11)),
        ],
      ),
    );
  }

  _newsSection() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(20),
          _leastNews(),
          const Gap(15),
          Text("Tavsiya etiladigan",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold, fontSize: 20)),
          const Gap(15),
          _recommendedNews()
        ],
      ),
    );
  }

  _leastNews() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: InkWell(
        onTap: () => navPush(
            context,
            DetailedNew(
              news: newsList[1],
            )),
        child: SizedBox(
          child: Column(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/beach.png",
                      fit: BoxFit.cover,
                    )),
              ),
              const Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Yoga",
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 12)),
                  Text("2 kun oldin",
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 12))
                ],
              ),
              const Gap(10),
              Text("Yoga odamlarga qanday yordam beradi?",
                  style: GoogleFonts.poppins(fontSize: 25)),
              const Gap(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2000),
                              color: Colors.red),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(2000),
                            child: Image.asset("assets/images/owner.png",
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Gap(10),
                        const Text("Harshad Preparation")
                      ],
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _recommendedNews() {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            final news = newsList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Container(
                padding: const EdgeInsets.all(8),
                height: 115,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: InkWell(
                  onTap: () => navPush(context, DetailedNew(news: news)),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 90,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("${news.image}",
                                  fit: BoxFit.cover)),
                        ),
                        const Gap(15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 230,
                              child: Text("${news.desc}",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  CupertinoIcons.hand_thumbsup_fill,
                                  color: Color(0xff337fee),
                                  size: 15,
                                ),
                                Text("  ${news.likes} Likes")
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }

  _saladSection() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 245,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mealList.length,
        itemBuilder: (context, index) {
          final meal = mealList[index];
          final burger = burgerList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () => navPush(context, DetailedReceipt(meal: burger)),
              child: SizedBox(
                height: 225,
                width: 150,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 175,
                          width: 150,
                          decoration: BoxDecoration(
                            color: const Color(0xffeaebeb),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("${meal.name}",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                                const Gap(15),
                                Row(
                                  children: [
                                    Text("Ko'rilgan",
                                        style: GoogleFonts.poppins(
                                            color: Colors.grey, fontSize: 11)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("${meal.view} K",
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 11)),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(200)),
                                      child: Center(
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              size: 12,
                                              CupertinoIcons.bookmark,
                                              color: Color(0xffa44bfd),
                                            )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        top: 0,
                        child: SizedBox(
                            width: 150,
                            height: 110,
                            child: Image.asset("${meal.image}",
                                fit: BoxFit.cover))),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
