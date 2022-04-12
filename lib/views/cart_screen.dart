import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/controllers/cart_controller.dart';
import 'package:sample/views/widgets/cart_card.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final _cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cart",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _cartController.cartItem.clear();
                _cartController.update(["cart"]);
              },
              icon: const FaIcon(Icons.delete)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: GetBuilder<CartController>(
          id: "cart",
          initState: (_) {},
          builder: (_) {
            return ListView.separated(
                itemBuilder: (context, index) {
                  return CartCard(
                    index: index,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: _cartController.cartItem.length);
          },
        ),
      ),
    );
  }
}
