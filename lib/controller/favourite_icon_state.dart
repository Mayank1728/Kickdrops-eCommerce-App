import 'package:get/get.dart';

class FavouriteIconState extends GetxController{
  var _isFilled = false;
  bool get isFilled => _isFilled;

  void invertFilling(){
    if(_isFilled == false){
      _isFilled = true;
    } else {
      _isFilled = false;
    }
  }
}