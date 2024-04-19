import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/main_page.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final cardController = TextEditingController();
  final dateController = TextEditingController();
  final nameController = TextEditingController();
  final cvvController = TextEditingController();
  void updateText() {
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Pro",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50)
            ),
            child: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_outlined,size: 14,color: Color(0xffFFFFFF),),
              // color: Color(0xff0F1729),

            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Container(
                width: 315,
                child: Text("Kredit kartangiz ma'lumotlarini kiritish uchun"
                    " yozishni boshlang. Hamma narsa sizning ma'lumotlaringizga "
                    "ko'ra yangilanadi.",
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color:  Color(0xff0F1729),
                    letterSpacing: 0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                  width: 315,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffFFFFFF),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff000000).withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(23),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/calory/card.png',width: 48,height: 30,alignment: Alignment.bottomLeft,),
                      const SizedBox(
                        height: 28,
                      ),
                      Text(cardController.text.isNotEmpty ? cardController.text : "0000 0000 0000 0000",style: GoogleFonts.roboto(
                        color: Color(0xff0F1729),
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                      ),),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text("Amal qilish muddati",style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                            textAlign: TextAlign.center,
                            ),
                            Text(dateController.text.isNotEmpty ? dateController.text : "02/25",style: GoogleFonts.poppins(
                                color: Colors.grey,
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Text(nameController.text.isNotEmpty ? nameController.text : "Nomonov Abdulboriy",style: GoogleFonts.poppins(
                        color: Color(0xff0F1729),
                        fontSize: 11,
                        fontWeight: FontWeight.w600
                      ),
                        textAlign: TextAlign.center,

                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: 275,
                height: 264,
                child: Column(
                  children: [
                    TextFormField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                          CardNumberInputFormatter()
                        ],
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Karta raqamini kiriting',
                        labelText: 'Karta raqami',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                      onChanged: (value) {
                        updateText();
                      },
                      controller: cardController,
                    ),
                    TextFormField(
                      controller: nameController,
                      onChanged: (value) {
                        updateText();
                      },
                      decoration: InputDecoration(
                        hintText: 'Ismingizni va FamiliyangizniKiriting',
                        labelText: 'Ism Familiya',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: dateController,
                      onChanged: (value) {
                        updateText();
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Amal qilish muddatini kiriting',
                        labelText: 'Amal qilish muddatini',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                        DateController()
                      ],
                    ),
                    TextFormField(
                      controller: cvvController,
                      onChanged: (value) {
                        updateText();
                      },
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'CVV kodini kiriting',
                        labelText: 'CVV kodi',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(3)
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => MainPage()),
          );
        },
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.center,
              width: 327,
              height: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xffA54BFF),
              ),
              child: Center(
                child: Text(
                  "Davom ettirish",
                  style: GoogleFonts.dmSans(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();
    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 4 == 0 && inputData.length != index) {
        buffer.write(" ");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}

class DateController extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }
    String inputData = newValue.text;
    StringBuffer buffer = StringBuffer();
    for (var i = 0; i < inputData.length; i++) {
      buffer.write(inputData[i]);
      int index = i + 1;

      if (index % 2 == 0 && inputData.length != index) {
        buffer.write("/");
      }
    }
    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.toString().length),
    );
  }
}
