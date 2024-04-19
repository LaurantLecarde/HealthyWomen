import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/constants/colors_app.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/analystics_pages/analystic_page.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/daily_recieps/daily_reciept.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/news_pages/news_page.dart';

import '../widgets/leading_icon.dart';
import 'bottom_screens/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  onTapped(int i) {
    setState(() {
      _currentIndex = i;
    });
  }

  final _activatedBoxDecoration = BoxDecoration(
    color: AppColors.appColor,
    borderRadius: BorderRadius.circular(12),
  );
  final _deactivatedBoxDecoration = BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(12),
  );

  List<Widget> _screens = [
    Center(child: Text("Mashqlar"),),
    DailyRecipes(),
    HomePage(),
    NewsPage(),
    AnalyzePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        height: 100,
        width: double.infinity,
        color: Colors.black,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
            selectedItemColor:Colors.white,
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedLabelStyle: TextStyle(color: Colors.white),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: _currentIndex == 0
                      ? _activatedBoxDecoration
                      : _deactivatedBoxDecoration,
                  child: Center(
                    child: Icon(
                      Icons.directions_bike,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Velosiped'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: _currentIndex == 1
                      ? _activatedBoxDecoration
                      : _deactivatedBoxDecoration,
                  child: Center(
                    child: Icon(
                      Icons.set_meal,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Retseptlar'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: _currentIndex == 2
                      ? _activatedBoxDecoration
                      : _deactivatedBoxDecoration,
                  child: Center(
                    child: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Asosiy'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: _currentIndex == 3
                      ? _activatedBoxDecoration
                      : _deactivatedBoxDecoration,
                  child: Center(
                    child: Icon(
                      Icons.rocket_launch_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Yangilikar'),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: _currentIndex == 4
                      ? _activatedBoxDecoration
                      : _deactivatedBoxDecoration,
                  child: Center(
                    child: Icon(
                      Icons.sports_football_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: 'Piyoda'),
          ],
          currentIndex: _currentIndex,
          onTap: (i) {
            onTapped(i);
          },
        ),
      ),
    );
  }
}
