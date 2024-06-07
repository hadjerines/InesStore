import 'package:flutter/material.dart';

class CostumAppBar extends StatelessWidget {
  const CostumAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 5, 20, 34),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 20,
          color: Colors.white,
          icon: Icon(Icons.menu),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 5, 20, 34),
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          iconSize: 20,
          color: Colors.white,
          icon: Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
