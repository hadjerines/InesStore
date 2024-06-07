import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            iconSize: 20,
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
