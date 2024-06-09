import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Module/products.dart';
import 'package:flutter_app/screens/Home/Widget/category.dart';
import 'package:flutter_app/screens/Home/Widget/home_app_bar.dart';
import 'package:flutter_app/screens/Home/Widget/productCard.dart';
import 'package:flutter_app/screens/Home/Widget/search_bar.dart';
import 'Widget/image_slider.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({
    super.key,
  });

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectdCategories = [];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 35,
              ),
              // for custom appbar
              const CostumAppBar(),
              const SizedBox(
                height: 20,
              ),
              //for search bars
              const MySearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                currentSlide: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              // for category selection
              const Categories(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special For You ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black54),
                  ),
                ],
              ),
              //for shopping items
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.78,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
