// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/controllers/cart_controller.dart';
import 'package:sample/utils/const.dart';

class ShopeCard extends StatelessWidget {
  int index;
  ShopeCard({Key? key, required this.index}) : super(key: key);

  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      child: Row(
        children: <Widget>[
          Image(
              height: 200,
              width: 200,
              fit: BoxFit.cover,
              image: AssetImage(_cartController.allProduct[index].image)),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  text(title: _cartController.allProduct[index].productName),
                  const SizedBox(
                    height: 20,
                  ),
                  text(
                      title:
                          "Price: ${_cartController.allProduct[index].price}"),
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                          color: Colors.green,
                          onPressed: () {
                            _cartController.addToCart(index: index);
                          },
                          icon: const FaIcon(FontAwesomeIcons.plus)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
