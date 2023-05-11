import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:neumorphic_music_app/colors.dart';

class Intro extends StatelessWidget {
  const Intro({required this.day});
  final bool day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          Text(
            'Design by: Elena Zelova',
            style: TextStyle(
              fontSize: 12,
              color: day ? textColorDark : textColorLight,
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'El Hijo del hombre',
            style: TextStyle(
              color: day ? textColorDark : textColorLight,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Rubinsky RBK',
            style: TextStyle(
              color: day ? textColorDark : textColorLight,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class Beats extends StatelessWidget {
  const Beats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: beatGradient,
          ),
        ),
      ],
    );
  }
}

class VolumeButton extends StatelessWidget {
  const VolumeButton(
      {Key? key,
      required this.btnRadius,
      required this.childRadius,
      required this.text,
      required this.day})
      : super(key: key);

  final double btnRadius, childRadius;
  final String text;
  final bool day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: btnRadius,
      width: btnRadius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: day
              ? [Colors.white70, Colors.black12]
              : [
                  themeColorLight.withOpacity(0.1),
                  Colors.black,
                ],
        ),
        boxShadow: day
            ? [
                BoxShadow(
                    color: Color(0XFF090010).withOpacity(0.6),
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    spreadRadius: 3),
                BoxShadow(
                    color: Color(0XFFB8B9BC).withOpacity(0.6),
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                    spreadRadius: 2),
              ]
            : [
                BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    offset: Offset(5, 5),
                    blurRadius: 10,
                    spreadRadius: 3),
                BoxShadow(
                    color: themeColorLight.withOpacity(0.2),
                    offset: Offset(-5, -5),
                    blurRadius: 10,
                    spreadRadius: 2),
              ],
      ),
      child: Center(
        child: Container(
          height: childRadius,
          width: childRadius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: buttonGradient,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(11),
              child: Image.asset(text),
            ),
          ),
        ),
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton(
      {Key? key,
      required this.btnRadius,
      required this.childRadius,
      required this.text,
      required this.day})
      : super(key: key);

  final double btnRadius, childRadius;
  final String text;
  final bool day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      height: btnRadius,
      width: btnRadius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: day
              ? [Colors.white70, Colors.black12]
              : [
                  themeColorLight.withOpacity(0.50),
                  Colors.black,
                ],
        ),
        boxShadow: day
            ? [
                BoxShadow(
                    color: Color(0XFF090010).withOpacity(0.6),
                    offset: Offset(8, 8),
                    blurRadius: 15,
                    spreadRadius: 3),
                BoxShadow(
                    color: Color(0XFFB8B9BC).withOpacity(0.6),
                    offset: Offset(-8, -8),
                    blurRadius: 15,
                    spreadRadius: 3),
              ]
            : [
                BoxShadow(
                    color: Colors.black.withOpacity(0.8),
                    offset: Offset(8, 8),
                    blurRadius: 15,
                    spreadRadius: 3),
                BoxShadow(
                    color: themeColorLight.withOpacity(0.2),
                    offset: Offset(-8, -8),
                    blurRadius: 15,
                    spreadRadius: 3),
              ],
      ),
      child: Center(
        child: Container(
          height: childRadius,
          width: childRadius,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: buttonGradient,
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(13),
              child: Image.asset(text),
            ),
          ),
        ),
      ),
    );
  }
}
