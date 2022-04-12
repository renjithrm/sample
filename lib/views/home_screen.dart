import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/controllers/cart_controller.dart';
import 'package:sample/views/cart_screen.dart';
import 'package:sample/views/widgets/shop_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Products",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await Get.to(CartScreen());
              },
              icon: const FaIcon(FontAwesomeIcons.cartPlus))
        ],
      ),
      body: Container(
        width: _size.width,
        height: _size.height,
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                height: _size.height * 0.2,
                child: ShopeCard(
                  index: index,
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
            itemCount: _cartController.allProduct.length),
      ),
    );
  }
}
