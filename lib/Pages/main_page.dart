import 'dart:ui';
import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nullfeel/components/utils.dart';
import 'package:nullfeel/components/background_text.dart';
import 'package:intl/intl.dart';
// import 'package:dart_ipify/dart_ipify.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String hour = DateFormat('kk').format(clock);
  String minute = DateFormat('mm').format(clock);
  // String ipv4 = "";

  // void getIp() async {
  //   final ipv4 = await Ipify.ipv4();
  //   print(ipv4);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              width: AppUtils.screenWidth / 2,
              height: AppUtils.screenHeight,
              //color: Colors.red,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: PixelatedBackgroundText(
                      text: hour,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: PixelatedBackgroundText(
                      text: minute,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "NullFeel",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Valo',
                        //color: Colors.black,
                        fontSize: 30),
                  ),
                ),
                Container(
                  child: Wrap(
                    spacing: 10,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {
                            js.context.callMethod(
                                'open', ['https://github.com/nullfeel']);
                          },
                          icon: Icon(Ionicons.logo_github),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          label: Text("Github")),
                      ElevatedButton.icon(
                          onPressed: () {
                            js.context.callMethod(
                                'open', ['https://t.me/nullfeel_dev']);
                          },
                          icon: Icon(Ionicons.chatbox),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          label: Text("Telegram")),
                      ElevatedButton.icon(
                          onPressed: () {
                            js.context.callMethod('open', [
                              'https://www.linkedin.com/in/bima-marta-s-3b3269213'
                            ]);
                          },
                          icon: Icon(Ionicons.logo_linkedin),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          label: Text("LinkedIn")),
                    ],
                  ),
                  padding: EdgeInsets.only(top: 50),
                ),
              ],
            ),
          ),
          Positioned(
            left: AppUtils.screenWidth / 50,
            bottom: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 230,
                  child: Text(
                    "HI, WELCOME TO MY WEBSITE. I'M A 17 YO HIGHSCHOOL STUDENT AND CURRENTLY LEARNING FLUTTER",
                    style: TextStyle(letterSpacing: 1.4, fontSize: 9),
                  ),
                ),
              ],
            ),
          ),

          //YOUR IP
          Positioned(
            top: AppUtils.screenHeight / 2.465,
            right: AppUtils.screenWidth / 5.3,
            child: Container(
              width: 5,
              height: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(0, 255, 43, 1),
              ),
            ),
          ),

          Positioned(
            top: AppUtils.screenHeight / 2.5,
            right: AppUtils.screenWidth / 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 230,
                  child: Text(
                    "ONLINE",
                    style: GoogleFonts.vt323(letterSpacing: 1, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          //Top Header
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              child: Row(
                children: [
                  Text(
                    "WhyAreYouHere??",
                    style: GoogleFonts.spaceMono(
                        fontSize: 10, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
