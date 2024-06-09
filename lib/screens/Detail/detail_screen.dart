import 'package:flutter/material.dart';
import 'package:flutter_app/Module/products.dart';
import 'package:flutter_app/screens/Detail/widget/addto_cart.dart';
import 'package:flutter_app/screens/Detail/widget/description.dart';
import 'package:flutter_app/screens/Detail/widget/detail_app_bar.dart';
import 'package:flutter_app/screens/Detail/widget/image_slider.dart';
import 'package:flutter_app/screens/Detail/widget/items_detail.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // for add to cart , icon and quantity
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          children: [
            // for back button share and favorite
            DetailAppBar(
              product: widget.product,
            ),
            // for detail image
            MyImageSlider(
              image: widget.product.image,
              onChange: (index) {
                setState(() {
                  currentImage = index;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentImage == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // for product name , price and rating and saller
                  ItemsDetail(product: widget.product),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Color",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Color.fromARGB(255, 4, 17, 27),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: List.generate(
                      widget.product.colors.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(
                            microseconds: 300,
                          ),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentColor == index
                                ? Colors.white
                                : widget.product.colors[index],
                            border: currentColor == index
                                ? Border.all(
                                    color: widget.product.colors[index],
                                  )
                                : null,
                          ),
                          padding: currentColor == index
                              ? const EdgeInsets.all(2)
                              : null,
                          margin: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: widget.product.colors[index],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  // for description
                  Description(description: widget.product.description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
