import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Module/products.dart';
import 'package:flutter_app/Provider/favorite_provider.dart';
import 'package:flutter_app/screens/Detail/detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              product: product,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 4, 17, 27),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(
                      product.image,
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    product.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          // for favorite
          Positioned(
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 4, 17, 27),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.toggleFavorite(product);
                  },
                  child: Icon(
                    provider.isExist(product)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
