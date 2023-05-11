import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:neumorphic_music_app/colors.dart';
import 'package:neumorphic_music_app/widgets.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool day = true;

  void changeMode() {
    setState(() {
      day = !day;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: day
                ? [bgColorLightTop, bgColorLightBottom]
                : [bgColorDarkTop, bgColorDarkBottom],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: changeMode,
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 30,
                              width: 30,
                              child: Icon(
                                day ? Icons.brightness_5 : Icons.brightness_2,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Intro(
                        day: day,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: Height * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: buttonGradient,
                    border: Border.all(
                      width: 5,
                      color: Color(0XFF555555),
                    ),
                    boxShadow: day
                        ? [
                            BoxShadow(
                              color: Color(0XFF090010).withOpacity(0.7),
                              offset: Offset(10, 10),
                              blurRadius: 20,
                              spreadRadius: 4,
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              offset: Offset(-10, -10),
                              blurRadius: 20,
                              spreadRadius: 4,
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: Color(0XFF090010).withOpacity(0.7),
                              offset: Offset(10, 10),
                              blurRadius: 20,
                              spreadRadius: 4,
                            ),
                            BoxShadow(
                              color: themeColorLight.withOpacity(0.5),
                              offset: Offset(-10, -10),
                              blurRadius: 20,
                              spreadRadius: 4,
                            ),
                          ],
                  ),
                  child: Center(
                    child: Beats(),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '3:07',
                            style: TextStyle(
                              color: day ? textColorDark : textColorLight,
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            height: 7,
                            width: Width * 0.45,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0XFF474747),
                                        Color(0XFF141414),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                                FractionallySizedBox(
                                  heightFactor: 1,
                                  widthFactor: 0.3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          themeColorDark,
                                          themeColorLight
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '1:53',
                            style: TextStyle(
                              color: day ? textColorDark : textColorLight,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          VolumeButton(
                            btnRadius: Height * 0.045,
                            childRadius: Height * 0.34,
                            text: 'assets/image/minus.png',
                            day: day,
                          ),
                          Container(
                            height: Height * 0.06,
                            width: Height * 0.06,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  bgColorDarkTop,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: Height * 0.06,
                                width: Height * 0.06,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0XFF2F2934),
                                      Color(0XFF483A51),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: TextStyle(
                                      color: themeColorLight,
                                      fontSize: 23,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          VolumeButton(
                            btnRadius: Height * 0.045,
                            childRadius: Height * 0.34,
                            text: 'assets/image/plus.png',
                            day: day,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          'Repeat',
                          style: TextStyle(
                            fontSize: 20,
                            color: day ? textColorDark : textColorLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PlayButton(
                      btnRadius: Height * 0.07,
                      childRadius: Height * 0.062,
                      text: 'assets/image/previous.png',
                      day: day,
                    ),
                    PlayButton(
                      btnRadius: Height * 0.1,
                      childRadius: Height * 0.092,
                      text: 'assets/image/play.png',
                      day: day,
                    ),
                    PlayButton(
                      btnRadius: Height * 0.07,
                      childRadius: Height * 0.062,
                      text: 'assets/image/next.png',
                      day: day,
                    ),
                  ],
                ),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
