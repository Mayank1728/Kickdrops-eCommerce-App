import 'package:flutter/material.dart';
import 'package:nike_store/components/ProductTile.dart';
import 'package:nike_store/utils/colors.dart';
import '../components/app_text.dart';
import '../components/icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // HOMEPAGE
    return Scaffold(
      body: SafeArea(
        // stack for Body + Floating Nav Bar
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Body
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              //color: Colors.black,
              margin: EdgeInsets.only(top: 18, left: 15, right: 15),
              child: Column(
                children: [
                  // header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // menu
                      AppIcons(iconData: Icons.menu),
                      AppText(
                        text: "Kickdrops",
                        fontWeight: FontWeight.w300,
                      ),
                      AppIcons(
                        iconData: Icons.shopping_cart_outlined,
                      ),
                    ],
                  ),
                  // SearchBar
                  Container(
                      alignment: Alignment.centerLeft,
                      width: double.maxFinite,
                      padding: EdgeInsets.only(left: 5),
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        children: [
                          AppIcons(
                            iconData: Icons.search_outlined,
                            iconSize: 30,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          AppText(
                            text: "What are you looking for?",
                            fontSize: 16,
                            fontColor: Colors.grey[600],
                          )
                        ],
                      )),
                  // Loc Icon + shipping address
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: double.maxFinite,
                    height: 30,
                    decoration: BoxDecoration(
                        //color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      children: [
                        AppIcons(
                          containerWidth: 30,
                          iconSize: 27,
                          iconData: Icons.location_on,
                          backgroundColor: Colors.white,
                          iconColor: AppColors.appMainColor,
                        ),
                        AppText(
                            text: "Ship to ",
                            fontSize: 16,
                            fontColor: Colors.grey[600]),
                        AppText(
                          text: "JI. Malioboro, Block Z 18",
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  ),
                  // ListView.builder(itemBuilder: itemBuilder)
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                    child: Container(
                      //color: Colors.blue,
                      width: 340,
                      child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return _twoTiles(index);
                          }),
                    ),
                  )
                ],
              ),
            ),
            // Floating Nav Bar
            Container(
              margin: EdgeInsets.only(bottom: 37),
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppIcons(
                    iconData: Icons.house_outlined,
                    backgroundColor: Colors.black!,
                    iconColor: Colors.white,
                    iconSize: 30,
                  ),
                  AppIcons(
                    iconData: Icons.search_outlined,
                    backgroundColor: Colors.black!,
                    iconColor: Colors.white,
                    iconSize: 30,
                  ),
                  AppIcons(
                    iconData: Icons.favorite_outline,
                    backgroundColor: Colors.black!,
                    iconColor: Colors.white,
                    iconSize: 30,
                  ),
                  AppIcons(
                    iconData: Icons.account_circle_outlined,
                    backgroundColor: Colors.black!,
                    iconColor: Colors.white,
                    iconSize: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 0 -> 1, 2
  // 1 -> 3, 4
  // 2 -> 5, 6

  Widget? _twoTiles(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductTile(
          imgIdx: index * 2 + 1,
        ),
        ProductTile(
          imgIdx: index * 2 + 2,
        )
      ],
    );
  }
}
