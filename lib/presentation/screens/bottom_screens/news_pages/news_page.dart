import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/constants/colors_app.dart';
import 'package:healthy_women/constants/navigators.dart';
import 'package:healthy_women/model/exe_model/news_model.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/news_pages/detailed_new.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      appBar: AppBar(
        backgroundColor: mainTheme(context),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text("Yangiliklar\nVa Maqolalar",
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
      body: _newsSection(),
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
        onTap: ()=>navPush(context, DetailedNew(news: newsList[1],)),
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
                      style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12)),
                  Text("2 kun oldin",
                      style: GoogleFonts.poppins(color: Colors.grey, fontSize: 12))
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
                          child: ClipRRect(borderRadius: BorderRadius.circular(2000),child: Image.asset("assets/images/owner.png",fit: BoxFit.cover),),
                        ),
                        const Gap(10),
                        const Text("Harshad Preparation")
                      ],
                    ),
                  ),
                   IconButton(onPressed: (){},icon : Icon(Icons.more_horiz))
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
                  onTap: ()=>navPush(context, DetailedNew(news: news)),
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
                          child: ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset("${news.image}", fit: BoxFit.cover)),
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
                                      fontWeight: FontWeight.bold, fontSize: 15)),
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
}
