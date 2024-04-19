import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/bottom_screens/news_pages/news_page.dart';

import '../../../../constants/colors_app.dart';
import '../../../../constants/navigators.dart';
import '../../../../model/exe_model/meal_model.dart';
import '../../../widgets/leading_icon.dart';

class DetailedReceipt extends StatefulWidget {
  const DetailedReceipt({super.key, required this.meal});

  final BurgerModel meal;

  @override
  State<DetailedReceipt> createState() => _DetailedReceiptState();
}

class _DetailedReceiptState extends State<DetailedReceipt> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: const LeadingIcon(),
          title: Text("Retseptlar", style: GoogleFonts.poppins()),
          centerTitle: true,
        ),
        body: _burgerSection(),
      ),
    );
  }

  _burgerSection() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _imageSection(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: SizedBox(
              height: 35,
              width: 300,
              child: TabBar(
                dividerColor: Colors.transparent,
                unselectedLabelColor: AppColors.appColor,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                labelStyle: GoogleFonts.poppins(),
                indicator: BoxDecoration(
                    color: AppColors.appColor,
                    borderRadius: BorderRadius.circular(15)),
                tabs: [
                  Text("Tarkibi"),
                  Text("Jarayon"),
                ],
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () => navPush(context, const NewsPage()),
              child: const Text("Neew")),
          Expanded(
              child: TabBarView(children: [
            _extract(),
            _process()
            // _process()
          ]))
        ],
      ),
    );
  }

  _imageSection() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 180,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("${widget.meal.image}", fit: BoxFit.cover),
            ),
          ),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 190,
                  child: Text("${widget.meal.name}",
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold))),
              Text("(${widget.meal.view}k ko'rilgan)",
                  style: GoogleFonts.poppins(color: Colors.grey, fontSize: 14)),
            ],
          ),
        ],
      ),
    );
  }

  _extract() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${widget.meal.receipts?.length} massaliq",
                style: GoogleFonts.poppins(color: Colors.grey),
              ),
            ],
          ),
          const Gap(10),
          SizedBox(
            height: 320,
            child: ListView.builder(
                itemCount: widget.meal.receipts?.length,
                itemBuilder: (context, index) {
                  final receipt = widget.meal.receipts?[index];
                  final gram = widget.meal.gram?[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 76,
                      width: 400,
                      decoration: BoxDecoration(
                          color: const Color(0xffeaebeb),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: ListTile(
                          leading: SizedBox(
                            height: 52,
                            width: 52,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset("${widget.meal.image}",
                                    fit: BoxFit.cover)),
                          ),
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text("$receipt",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                          trailing: Text("${gram}g",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey, fontSize: 14)),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  _process() {
    return SingleChildScrollView(
      child: SizedBox(
        height: 320,
        child: ListView.builder(
            itemCount: widget.meal.receipts?.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  width: 400,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color(0xffeaebeb),
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${index + 1}-qadam",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
