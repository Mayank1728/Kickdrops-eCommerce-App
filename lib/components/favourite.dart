import 'package:flutter/material.dart';
import 'package:nike_store/controller/products_controllers.dart';
import 'package:get/get.dart';

class FavouriteIcon extends StatefulWidget {
  final double size;
  final int index;
  FavouriteIcon({super.key, this.size = 30, required this.index});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  @override
  Widget build(BuildContext context) {
    List<bool> productList = Get.find<ProductController>().productList;
    return GestureDetector(
      onTap: (){
        setState(() {
          productList[widget.index] = !productList[widget.index];
        });
      },
      child: Icon(
        productList[widget.index] == false ? Icons.favorite_outline : Icons.favorite_outlined,
        size: widget.size,
        color: Colors.black,
      ),
    );
  }
}
