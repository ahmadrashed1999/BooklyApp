import 'package:flutter/material.dart';

class CustomBookDeatilsAppBar extends StatelessWidget {
  const CustomBookDeatilsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_rounded),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_sharp),
        ),
      ],
    );
  }
}
