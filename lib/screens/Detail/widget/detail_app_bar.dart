import 'package:flutter/material.dart';
import 'package:flutter_app/Module/products.dart';
import 'package:flutter_app/Provider/favorite_provider.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 234, 234, 231),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 20,
            icon: Icon(Icons.arrow_back_ios),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 234, 234, 231),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            iconSize: 20,
            icon: Icon(Icons.share),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 234, 234, 231),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            iconSize: 20,
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Color.fromARGB(255, 4, 17, 27),
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
