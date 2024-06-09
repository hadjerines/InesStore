import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> products = [
  Product(
    title: "dress wedding",
    description: " it is a dress ",
    image: "images/all1.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "Suit",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all0.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.grey,
      Colors.black,
    ],
    category: "Men",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Saint Laurent",
    description: "it is dress ",
    image: "images/all3.jpeg",
    price: 700,
    seller: "by Ines",
    colors: [
      Colors.white,
    ],
    category: "Shoes",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Hold Daimonds ",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: "images/all2.jpeg",
    price: 155,
    seller: "Jacket Store",
    colors: [
      Colors.white,
    ],
    category: "Jewelry",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "dress",
    description: " it is a dress ",
    image: "images/all4.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/image3.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/image2.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/man1.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/shoes4.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/image6.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
  Product(
    title: "pan",
    description: " it is a dress ",
    image: "images/shoes7.jpeg",
    price: 12000,
    seller: "by Ines",
    colors: [
      Color.fromARGB(255, 3, 4, 30),
      Colors.black45,
      Colors.white,
    ],
    category: "Women",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 3,
  ),
];
