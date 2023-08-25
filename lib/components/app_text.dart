import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final double fontSize;
  Color? fontColor;
  final String text;
  final FontWeight fontWeight;

  AppText(
      {super.key,
      required this.text,
      this.fontColor = Colors.black,
      this.fontSize = 30,
      this.fontWeight = FontWeight.w400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontFamily: "Montserrat",
      fontWeight: fontWeight),
    );
  }
}
