import 'package:flutter/cupertino.dart';

import '../utils/colors.dart';
import 'app_text.dart';

class Tags extends StatelessWidget {
  final String text;
  final String size;
  const Tags({super.key, this.text = "5 Pairs Left", this.size = "normal"});

  Widget build(BuildContext context) {
    double width = 120;
    String input = size.toLowerCase();
    if(input == "normal"){
      width = 120;
    } else if(input == "small"){
      width = 90;
    } else {
      width = 100;
    }
    return Container(
      height: 40,
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.greyAccent,
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Center(child: AppText(text: text, fontSize: 17,fontWeight: FontWeight.w600,)),
    );
  }
}



