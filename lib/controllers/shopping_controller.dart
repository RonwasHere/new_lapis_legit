import 'package:get/get.dart';
import 'package:new_lapis_legit/models/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        productName: 'Frist Prod',
        productImage: 'abd',
        productDescription: 'some description about product',
        price: 30,
      ),
      Product(
        id: 2,
        productName: 'Sec Prod',
        productImage: 'abd',
        productDescription: 'some description about product',
        price: 40,
      ),
      Product(
        id: 3,
        productName: 'Third Prod',
        productImage: 'abd',
        productDescription: 'some description about product',
        price: 49.5,
      ),
    ];
    
    products.value = productResult;
  }
}
