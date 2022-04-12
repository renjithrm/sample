import 'package:get/get.dart';
import 'package:sample/model/product_model.dart';

class CartController extends GetxController {
  var allProduct = <ProductModel>[
    ProductModel(
        id: 1, productName: "soda", price: 10, image: "assets/cart_image.png"),
    ProductModel(
        id: 1, productName: "rice", price: 100, image: "assets/cart_image.png"),
    ProductModel(
        id: 1,
        productName: "Soft drink",
        price: 40,
        image: "assets/cart_image.png"),
  ];

  var cartItem = <ProductModel>[];

  void addToCart({required int index}) {
    cartItem.add(allProduct[index]);
    print(cartItem);
    update(["cart"]);
  }
}
