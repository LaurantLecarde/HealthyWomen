import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/constants/colors_app.dart';
import 'package:healthy_women/model/exe_model/news_model.dart';
import 'package:healthy_women/presentation/widgets/leading_icon.dart';
import '../../../../constants/navigators.dart';

class DetailedNew extends StatefulWidget {
  const DetailedNew({super.key, required this.news});

  final NewsModel news;

  @override
  State<DetailedNew> createState() => _DetailedNewState();
}

class _DetailedNewState extends State<DetailedNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme(context),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: LeadingIcon(),
        title: Text("Maqolalar", style: GoogleFonts.poppins()),
        centerTitle: true,
      ),
      body: _singleNews(),
    );
  }

  _singleNews() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [_imagedSection(), _descSection(), _nextRecommendedNews()],
      ),
    );
  }

  _imagedSection() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(color: Colors.white),
      child: SizedBox(
        child: Column(
          children: [
            Container(
              height: 180,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "${widget.news.image}",
                    fit: BoxFit.cover,
                  )),
            ),
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Yoga",
                    style:
                        GoogleFonts.poppins(color: Colors.grey, fontSize: 12)),
                Text("2 kun oldin",
                    style:
                        GoogleFonts.poppins(color: Colors.grey, fontSize: 12))
              ],
            ),
            const Gap(10),
            Text("Yoga odamlarga qanday yordam beradi?",
                style: GoogleFonts.poppins(fontSize: 25)),
            const Gap(10),
          ],
        ),
      ),
    );
  }

  _descSection() {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white,
      width: MediaQuery.of(context).size.width - 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${widget.news.desc}",
              style: GoogleFonts.poppins(color: Colors.grey)),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.hand_thumbsup_fill,
                color: Color(0xff337fee),
                size: 15,
              ),
              Text("  ${widget.news.likes} Likes")
            ],
          )
        ],
      ),
    );
  }

  _nextRecommendedNews() {
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
}
