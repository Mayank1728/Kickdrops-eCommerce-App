import 'package:flutter/material.dart';

class FavouriteIcon extends StatefulWidget {
  final double size;
  const FavouriteIcon({super.key, this.size = 30});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Icon(
        isClicked == false ? Icons.favorite_outline : Icons.favorite_outlined,
        size: widget.size,
        color: Colors.black,
      ),
    );
  }
}
