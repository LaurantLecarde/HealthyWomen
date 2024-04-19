import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsProfile extends StatefulWidget {
  const SettingsProfile({super.key});

  @override
  State<SettingsProfile> createState() => _SettingsProfileState();
}

class _SettingsProfileState extends State<SettingsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kaloriya',textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.w700))),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18,top: 2),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(CupertinoIcons.arrow_left_circle_fill,color: Colors.black,size: 40),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(30),
            Text("Profilingizni to'ldiring",textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700))),
            const Gap(20),
            Container(
              width: 320,
              child: Text(
                  "Xavotir olmang, uni istalgan vaqtda keyinroq o'zgartirishingiz yoki hozircha o'tkazib yuborishingiz mumkin",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 15))
              ),
            ),
            const Gap(30),
            Container(
              height: 200,
              width: 200,
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/user.png'),
                    radius: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150,top: 150),
                    child: GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                            context: context,
                            builder: buildActionSheet
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue
                        ),
                        child: const Icon(CupertinoIcons.photo_camera,color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Gap(20),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Ismingiz', hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                      color: Colors.grey,
                    )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const Gap(15),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Familiyangiz', hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                      color: Colors.grey,
                    )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const Gap(15),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Telefon raqamingiz', hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                      color: Colors.grey,
                    )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      prefix: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          '(+998)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Paolingiz', hintStyle: GoogleFonts.poppins(textStyle: TextStyle(
                      color: Colors.grey,
                    )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xff0015ff),
          ),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            borderRadius: BorderRadius.circular(15),
            splashColor: Colors.green,
            child: Center(
              child: Text('Saqlash',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 19,color: Colors.white))),
            ),
          ),
        ),
      ),
    );
  }
  Widget buildActionSheet(BuildContext context) => CupertinoActionSheet(
    title: Text("Profil rasimni qayerdan olasiz?"),
    actions: [
      CupertinoActionSheetAction(
          onPressed: () {},
          child: Text("Camera", style: TextStyle(color: CupertinoColors.activeBlue),)
      ),
      CupertinoActionSheetAction(
          onPressed: () {},
          child: Text("Gallery", style: TextStyle(color: CupertinoColors.activeBlue),)
      ),
    ],
    cancelButton: CupertinoActionSheetAction(
      onPressed: () => Navigator.pop(context),
      child: Text("Cencel", style: TextStyle(color: CupertinoColors.systemRed)),
    ),
  );
}
