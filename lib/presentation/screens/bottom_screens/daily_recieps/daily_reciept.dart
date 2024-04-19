import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/colors_app.dart';
import '../../../../constants/navigators.dart';
import '../../../../model/exe_model/meal_model.dart';
import 'detailed_receipt.dart';
class DailyRecipes extends StatefulWidget {
  const DailyRecipes({super.key});

  @override
  State<DailyRecipes> createState() => _DailyReciepState();
}

class _DailyReciepState extends State<DailyRecipes> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: mainTheme(context),
        appBar: AppBar(
          backgroundColor: mainTheme(context),
          elevation: 0,
          scrolledUnderElevation: 0,
          title: Text("Kundalik\nRetseplar",
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
        body: _getRecipes(),
      ),
    );
  }

  _getRecipes() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(20),
        Container(
          padding: const EdgeInsets.all(5),
          width: double.infinity,
          height: 45,
          child: TabBar(
            dividerColor: Colors.transparent,
              unselectedLabelColor: AppColors.appColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: AppColors.appColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              labelStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight:FontWeight.bold,
                  fontSize:12
              ),
              tabs: const [
                Tab(text: "Hammasi"),
                Tab(text: "Nonushta"),
                Tab(text: "Obed"),
                Tab(text: "Kechiki")
              ]),
        ),
        Expanded(
            child: TabBarView(
          children: [
            _allRecipes(),
            const Center(child: Text("Nonushta")),
            const Center(child: Text("Obed")),
            const Center(child: Text("Kechki")),
          ],
        ))
      ],
    );
  }

  _allRecipes() {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _saladSection(),
          const Gap(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Nonushta",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 16)),
              Text("255 Natija    ",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 11))
            ],
          ),
          const Gap(15),
          _morningSaladSection()
        ],
      ),
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
              onTap: () =>navPush(context, DetailedReceipt(meal: burger)),
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

  _morningSaladSection() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 245,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mealList.length,
        itemBuilder: (context, index) {
          final meal = mealList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {},
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
                                const Gap(10),
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
                        child: Container(

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
// Primary color
