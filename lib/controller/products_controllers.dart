import 'package:get/get.dart';

class ProductController extends GetxController{
  late List<bool> _productList;

  List<bool> get productList => _productList;

  void getPopularProductList(){
    _productList = [];
    for(int i = 0; i < 10; i++)
      _productList.add(false);
    update();
  }

}