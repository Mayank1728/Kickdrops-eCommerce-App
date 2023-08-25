import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcons extends StatelessWidget {
  final double containerWidth;
  final double containerHeight;
  final IconData iconData;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const AppIcons(
      {super.key,
      required this.iconData,
      this.containerHeight = 45,
      this.containerWidth = 45,
      this.iconSize = 23,
      this.iconColor = const Color(0xff000000),
      this.backgroundColor = const Color(0xffEEEDED)});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: containerWidth,
        height: containerHeight,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(30)),
        child: Icon(iconData, size: iconSize, color: iconColor,));
  }
}
