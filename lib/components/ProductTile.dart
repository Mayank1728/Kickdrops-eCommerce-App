import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../screens/product_details.dart';
import 'app_text.dart';
import 'favourite.dart';
import 'icons.dart';

class ProductTile extends StatelessWidget {
  final int imgIdx;

  const ProductTile({super.key, this.imgIdx = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(ProductDetails(imgIndex: imgIdx,));
      },
      child: Container(
        height: 250,
        width: 160,
        alignment: AlignmentDirectional.centerStart,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage("assets/img/air-jordan-${imgIdx}.png"))),
                ),
                Positioned(
                    right: 3,
                    top: 3,
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(30)),
                        child: FavouriteIcon())),
              ],
            ),
            Container(
              //color: Colors.blue,
              height: 60,
              alignment: AlignmentDirectional.topStart,
              width: 160,
              padding: EdgeInsets.only(top: 5, left: 2, right: 2),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Jordans Air ${imgIdx}", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),),
                  AppText(
                    text: "\$9000",
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
