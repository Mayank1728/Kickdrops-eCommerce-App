import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallProductTile extends StatelessWidget {
  final index;
  const SmallProductTile({super.key, this.index = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.green,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/air-jordan-$index.png")
          )

      ),
    );
  }
}
