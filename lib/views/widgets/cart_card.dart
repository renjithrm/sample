import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/controllers/cart_controller.dart';
import 'package:sample/utils/const.dart';

class CartCard extends StatelessWidget {
  int index;
  CartCard({Key? key, required this.index}) : super(key: key);

  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      child: Row(
        children: <Widget>[
          Image(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              image: AssetImage(_cartController.cartItem[index].image)),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  text(title: _cartController.cartItem[index].productName),
                  const SizedBox(
                    height: 20,
                  ),
                  text(
                      title: "Price: ${_cartController.cartItem[index].price}"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
