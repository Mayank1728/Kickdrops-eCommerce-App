import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_store/components/app_text.dart';
import 'package:nike_store/components/favourite.dart';
import 'package:nike_store/components/icons.dart';
import 'package:nike_store/components/small_product_tile.dart';
import 'package:nike_store/screens/home_page.dart';
import '../components/tags.dart';

class ProductDetails extends StatelessWidget {
  final imgIndex;
  const ProductDetails({super.key, this.imgIndex = 1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            height: 1400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header (back + cart icon)
                Container(
                  height: 50,
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 7, right: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(HomePage());
                          },
                          child: AppIcons(
                            iconData: Icons.arrow_back_ios_new_outlined,
                            backgroundColor: Colors.grey[400]!,
                          ),
                        ),
                        AppText(
                          text: "Sneakers Details",
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                        AppIcons(
                          iconData: Icons.shopping_cart_outlined,
                          backgroundColor: Colors.grey[400]!,
                        )
                      ],
                    )),
                // Product Img
                Container(
                  //width: double.maxFinite,
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Stack(
                    children: [
                      Container(
                        height: 320,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                AssetImage(
                                    "assets/img/air-jordan-$imgIndex.png"))),
                      ),
                    ],
                  ),
                ),
                // Horizontal Listview Images
                Container(
                  height: 100,
                  margin: EdgeInsets.only(top: 5, left: 5, right: 5),
                  //color: Colors.blue,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return _buildOtherImages(index);
                      }),
                ),
                SizedBox(
                  height: 25,
                ),
                // Shoe Name and Price + fav icon
                Container(
                  height: 160,
                  //color: Colors.blue,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  //color: AppColors.appMainColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: "Nike Air Jordans",
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            child: FavouriteIcon(),
                          ),
                        ],
                      ),
                      AppText(
                        text: "\$14,200",
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 15,),
                      // Tags + put stars rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Tags(text: "5 Pairs Left"),
                          Tags(text: "Sold 50+", size: "small",),
                          Tags(text: "4.7 Stars", size: "small",),
                        ],
                      ),
                    ],
                  ),
                ),
                // Description title + desc
                Container(
                  height: 360,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  //color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: "Description"),
                      SizedBox(height: 15,),
                      AppText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco Lorem ipsum dolor sit amet, consectetur adipiscing elit anim id est laborum.", fontSize: 20,)
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: "Select Size",
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10,),
                      // Size tags
                      Container(
                        height: 40,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            itemBuilder: (context, index){
                              return Tags(text: "US ${index + 4}", size: "small",);
                            }),
                      ),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    width: 350,
                    height: 60,
                    decoration: BoxDecoration(
                        //color: AppColors.appMainColor,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Center(child: AppText(text: "Add to Cart", fontWeight: FontWeight.w500,)),
                  ),
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    width: 350,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Center(child: AppText(text: "Buy Now", fontColor: Colors.white, fontWeight: FontWeight.w500,)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOtherImages(int index) {
    return SmallProductTile(
      index: index + 1,
    );
  }
}
