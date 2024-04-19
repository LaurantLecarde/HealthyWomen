import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthy_women/presentation/screens/profile_screen/settings_profil_page.dart';
import 'package:healthy_women/presentation/screens/profile_screen/tana_screen.dart';
import '../bottom_screens/calory_screen/p_kaloriya.dart';
import 'maqsad_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 43,
              width: 43,
              child: InkWell(
                splashColor: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Kaloriya()));
                },
                  child:Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.yellow
                    ),
                  )
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(45),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SettingsProfile()));
                },
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.yellow
                  ),
                )
              ),
              const Gap(10),
              Text('Linh Nguyen',textAlign: TextAlign.center,style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700))),
              const Gap(100),
              const Divider(indent: 25,endIndent: 25),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => MaqsadScreen()));
                          },
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.blue.shade100,
                          child: Center(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blue.shade100,
                                radius: 35,
                                child: const Icon(Icons.adjust),
                              ),
                              title: Text('Maqsad',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                              trailing: Icon(Icons.arrow_forward_ios,size: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => TanaBoyi()));
                          },
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.blue.shade100,
                          child: Center(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blue.shade100,
                                radius: 35,
                                child: const Icon(Icons.adjust),
                              ),
                              title: Text('Tana',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                              trailing: Icon(Icons.arrow_forward_ios,size: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => SettingsProfile()));
                          },
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.blue.shade100,
                          child: Center(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.blue.shade100,
                                radius: 35,
                                child: Icon(CupertinoIcons.settings),
                              ),
                              title: Text('Sozlamalar',style: GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700))),
                              trailing: const Icon(Icons.arrow_forward_ios,size: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
