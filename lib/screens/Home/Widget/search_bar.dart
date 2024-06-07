import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 5, 20, 34),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Flexible(
            flex: 4,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 25,
            width: 1.5,
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
